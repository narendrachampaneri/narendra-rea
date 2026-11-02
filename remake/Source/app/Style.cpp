#include "app/Style.h"

#include <algorithm>

#include "app/AudioSystem.h"
#include "app/Ui.h"

using namespace ax;

namespace mm::app::style
{

namespace
{
// The original blue stays as it is for the default colour; other colours tint it.
Color3B tintFor(Color3B c)
{
    if (c.r == 52 && c.g == 84 && c.b == 170)
        return Color3B::WHITE;
    return Color3B(std::min(255, 110 + c.r / 2), std::min(255, 110 + c.g / 2), std::min(255, 110 + c.b / 2));
}
}  // namespace

Node* background()
{
    // The original's title art, darkened by tinting (plain sprites only), behind the menus.
    const auto visible = Director::getInstance()->getVisibleSize();
    const auto origin  = Director::getInstance()->getVisibleOrigin();
    auto* art          = ui::titleArt("title_ret2_new.png", origin.x + visible.width / 2, Color3B(95, 95, 105));
    art->setTag(-99);  // popIn leaves it alone
    return art;
}

Label* heading(const std::string& s)
{
    const auto visible = Director::getInstance()->getVisibleSize();
    const auto origin  = Director::getInstance()->getVisibleOrigin();
    auto* l            = Label::createWithTTF(s, "fonts/digitalix.ttf", 20);
    l->setColor(Color3B(190, 205, 255));
    l->enableOutline(Color4B::BLACK, 2);
    l->setPosition(origin.x + visible.width / 2, origin.y + visible.height - 24);
    return l;
}

Label* text(const std::string& s, float size, Color3B colour)
{
    auto* l = Label::createWithTTF(s, "fonts/digitalix.ttf", size);
    l->setColor(colour);
    return l;
}

Pill pillWithLabel(const std::string& labelText, Size size, std::function<void()> onTap, Color3B colour)
{
    auto* root = Node::create();
    root->setContentSize(size);
    root->setAnchorPoint({0.5f, 0.5f});
    // The original's blue button (b03_mid) stretched to the size; the colour only tints it.
    auto* d = Sprite::createWithSpriteFrameName("b03_mid.png");
    d->setName("bg");
    d->setScale(size.width / d->getContentSize().width, size.height / d->getContentSize().height);
    d->setPosition(size / 2);
    d->setColor(tintFor(colour));
    root->addChild(d);
    auto* l = Label::createWithTTF(labelText, "fonts/digitalix.ttf", std::min(13.0f, size.height * 0.46f));
    l->enableOutline(Color4B(0, 0, 0, 160), 1);
    l->setPosition(size / 2);
    // One line, shrunk to fit the button (long names must not wrap into the next row).
    l->enableWrap(false);
    l->setOverflow(Label::Overflow::SHRINK);
    l->setDimensions(size.width - 10.0f, size.height);
    root->addChild(l, 1);

    auto* touch = EventListenerTouchOneByOne::create();
    touch->setSwallowTouches(true);
    auto inside = [root](Touch* t) {
        const Vec2 p = root->convertToNodeSpace(t->getLocation());
        return Rect(0, 0, root->getContentSize().width, root->getContentSize().height).containsPoint(p);
    };
    touch->onTouchBegan = [root, inside](Touch* t, Event*) {
        if (!root->isRunning() || !root->isVisible() || !inside(t))
            return false;
        for (Node* n = root; n; n = n->getParent())
            if (!n->isVisible())
                return false;
        root->stopActionByTag(77);
        auto* a = ScaleTo::create(0.06f, 0.94f);
        a->setTag(77);
        root->runAction(a);
        return true;
    };
    touch->onTouchEnded = [root, inside, onTap](Touch* t, Event*) {
        root->stopActionByTag(77);
        auto* a = EaseBackOut::create(ScaleTo::create(0.15f, 1.0f));
        a->setTag(77);
        root->runAction(a);
        if (inside(t))
        {
            AudioSystem::get().play(audio::SoundId::Grenade1, 0.6f);
            onTap();
        }
    };
    touch->onTouchCancelled = [root](Touch*, Event*) { root->setScale(1.0f); };
    root->getEventDispatcher()->addEventListenerWithSceneGraphPriority(touch, root);
    return {root, l};
}

Node* pill(const std::string& label, Size size, std::function<void()> onTap, Color3B colour)
{
    return pillWithLabel(label, size, std::move(onTap), colour).node;
}

void setPillColour(Node* pill, Color3B colour)
{
    if (auto* d = dynamic_cast<Sprite*>(pill->getChildByName("bg")))
        d->setColor(tintFor(colour));
}

Node* slider(Size size, int min, int max, int value, std::function<void(int)> onChange)
{
    auto* root = Node::create();
    root->setContentSize(size);
    root->setAnchorPoint({0.5f, 0.5f});
    auto* d = DrawNode::create();
    root->addChild(d);
    auto current = std::make_shared<int>(value);
    auto redraw  = [d, size, min, max, current] {
        d->clear();
        const float t = max > min ? static_cast<float>(*current - min) / (max - min) : 0.0f;
        const float y = size.height / 2, h = 6.0f;
        d->drawSolidRect({0, y - h / 2}, {size.width, y + h / 2}, Color4F(1, 1, 1, 0.2f));
        d->drawSolidRect({0, y - h / 2}, {size.width * t, y + h / 2}, Color4F(1.0f, 0.75f, 0.24f, 1));
        d->drawSolidCircle({size.width * t, y}, size.height * 0.38f, 0, 20, Color4F(1, 1, 1, 1));
    };
    redraw();
    auto* touch = EventListenerTouchOneByOne::create();
    touch->setSwallowTouches(true);
    auto set = [=](Touch* t) {
        const Vec2 p = root->convertToNodeSpace(t->getLocation());
        const float f = std::clamp(p.x / size.width, 0.0f, 1.0f);
        const int v   = min + static_cast<int>(f * (max - min) + 0.5f);
        if (v != *current)
        {
            *current = v;
            redraw();
            onChange(v);
        }
    };
    touch->onTouchBegan = [=](Touch* t, Event*) {
        for (Node* n = root; n; n = n->getParent())
            if (!n->isVisible())
                return false;
        const Vec2 p = root->convertToNodeSpace(t->getLocation());
        if (!Rect(-8, -8, size.width + 16, size.height + 16).containsPoint(p))
            return false;
        set(t);
        return true;
    };
    touch->onTouchMoved = [=](Touch* t, Event*) { set(t); };
    root->getEventDispatcher()->addEventListenerWithSceneGraphPriority(touch, root);
    return root;
}

void popIn(Node* root, float firstDelay, float step)
{
    float delay = firstDelay;
    for (Node* child : root->getChildren())
    {
        if (child->getTag() == -99)
            continue;
        const Vec2 home = child->getPosition();
        child->setPosition(home + Vec2(0, -14));
        child->setOpacity(0);
        child->runAction(Sequence::create(DelayTime::create(delay),
                                          Spawn::create(EaseOut::create(MoveTo::create(0.22f, home), 2.0f),
                                                        FadeIn::create(0.22f), nullptr),
                                          nullptr));
        delay += step;
    }
}

Node* dialog(const std::string& message, const std::string& yes, const std::string& no, std::function<void()> onYes,
             std::function<void()> onNo)
{
    const auto visible = Director::getInstance()->getVisibleSize();
    const auto origin  = Director::getInstance()->getVisibleOrigin();
    auto* layer        = LayerColor::create(Color4B(0, 0, 0, 170));
    auto* box          = DrawNode::create();
    const Size bs(std::min(360.0f, visible.width - 40), 150);
    const Vec2 c = origin + visible / 2;
    box->drawSolidRect(c - Vec2(bs.width, bs.height) / 2, c + Vec2(bs.width, bs.height) / 2, Color4F(0.13f, 0.16f, 0.30f, 1));
    box->drawRect(c - Vec2(bs.width, bs.height) / 2, c + Vec2(bs.width, bs.height) / 2, Color4F(1.0f, 0.75f, 0.24f, 1));
    layer->addChild(box);
    auto* msg = Label::createWithTTF(message, "fonts/arial.ttf", 14);
    msg->setMaxLineWidth(bs.width - 30);
    msg->setPosition(c + Vec2(0, 28));
    layer->addChild(msg);
    auto* a = pill(yes, {118, 34}, [layer, onYes] { layer->removeFromParent(); onYes(); }, kGood);
    a->setPosition(c + Vec2(-bs.width / 4, -40));
    layer->addChild(a);
    auto* b = pill(no, {118, 34}, [layer, onNo] { layer->removeFromParent(); onNo(); }, Color3B(90, 90, 110));
    b->setPosition(c + Vec2(bs.width / 4, -40));
    layer->addChild(b);
    auto* swallow = EventListenerTouchOneByOne::create();
    swallow->setSwallowTouches(true);
    swallow->onTouchBegan = [](Touch*, Event*) { return true; };
    layer->getEventDispatcher()->addEventListenerWithFixedPriority(swallow, -500);
    layer->setTag(-99);
    return layer;
}

void onBack(Node* scene, std::function<void()> back)
{
    auto* keys          = EventListenerKeyboard::create();
    keys->onKeyReleased = [back](EventKeyboard::KeyCode code, Event*) {
        if (code == EventKeyboard::KeyCode::KEY_BACK || code == EventKeyboard::KeyCode::KEY_ESCAPE)
            back();
    };
    scene->getEventDispatcher()->addEventListenerWithSceneGraphPriority(keys, scene);
}

}  // namespace mm::app::style

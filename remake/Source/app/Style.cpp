#include "app/Style.h"

#include <algorithm>

#include "app/AudioSystem.h"

using namespace ax;

namespace mm::app::style
{

namespace
{
void drawPill(DrawNode* d, Size size, Color4F fill)
{
    d->clear();
    const float r = size.height / 2;
    d->drawSolidRect({r, 0}, {size.width - r, size.height}, fill);
    d->drawSolidCircle({r, r}, r, 0, 24, fill);
    d->drawSolidCircle({size.width - r, r}, r, 0, 24, fill);
    // A lighter band on top gives the buttons some depth.
    const Color4F hi(std::min(fill.r + 0.12f, 1.0f), std::min(fill.g + 0.12f, 1.0f), std::min(fill.b + 0.12f, 1.0f), 0.55f);
    d->drawSolidRect({r, size.height * 0.55f}, {size.width - r, size.height * 0.92f}, hi);
}
Color4F f4(Color3B c) { return Color4F(c.r / 255.0f, c.g / 255.0f, c.b / 255.0f, 1.0f); }
}  // namespace

Node* background()
{
    const auto visible = Director::getInstance()->getVisibleSize();
    const auto origin  = Director::getInstance()->getVisibleOrigin();
    auto* g            = LayerGradient::create(Color4B(22, 28, 54, 255), Color4B(52, 40, 86, 255), Vec2(0.3f, 1.0f));
    g->setContentSize(visible);
    g->setPosition(origin);
    auto* stripes = DrawNode::create();
    for (float x = -visible.height; x < visible.width; x += 36)
        stripes->drawSolidRect({x, 0}, {x + 8, visible.height}, Color4F(1, 1, 1, 0.025f));
    g->addChild(stripes);
    return g;
}

Label* heading(const std::string& s)
{
    const auto visible = Director::getInstance()->getVisibleSize();
    const auto origin  = Director::getInstance()->getVisibleOrigin();
    auto* l            = Label::createWithTTF(s, "fonts/arial.ttf", 22);
    l->setColor(kAccent);
    l->enableOutline(Color4B::BLACK, 2);
    l->setPosition(origin.x + visible.width / 2, origin.y + visible.height - 24);
    return l;
}

Label* text(const std::string& s, float size, Color3B colour)
{
    auto* l = Label::createWithTTF(s, "fonts/arial.ttf", size);
    l->setColor(colour);
    return l;
}

Pill pillWithLabel(const std::string& labelText, Size size, std::function<void()> onTap, Color3B colour)
{
    auto* root = Node::create();
    root->setContentSize(size);
    root->setAnchorPoint({0.5f, 0.5f});
    auto* d = DrawNode::create();
    d->setName("bg");
    drawPill(d, size, f4(colour));
    root->addChild(d);
    auto* l = Label::createWithTTF(labelText, "fonts/arial.ttf", std::min(15.0f, size.height * 0.5f));
    l->enableOutline(Color4B(0, 0, 0, 160), 1);
    l->setPosition(size / 2);
    l->setMaxLineWidth(size.width - size.height * 0.6f);
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
    if (auto* d = dynamic_cast<DrawNode*>(pill->getChildByName("bg")))
        drawPill(d, pill->getContentSize(), f4(colour));
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

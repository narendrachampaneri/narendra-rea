#include "app/Ui.h"

#include "net/Protocol.h"

#include <algorithm>

using namespace ax;

namespace mm::app::ui
{

LabelAtlas* atlasLabel(std::string_view text)
{
    return LabelAtlas::create(text, "font02_new.png", 32, 32, ' ');
}

Node* titleArt(std::string_view file, float centerX)
{
    auto* director     = Director::getInstance();
    const auto visible = director->getVisibleSize();
    const auto origin  = director->getVisibleOrigin();

    auto* root = Node::create();

    auto* fill        = Sprite::create(file);
    const auto size   = fill->getContentSize();
    const float cover = std::max(visible.width / size.width, visible.height / size.height);
    fill->setScale(cover * 1.05f);
    fill->setPosition(origin + visible / 2);
    fill->setColor(Color3B(70, 64, 96));
    root->addChild(fill, 0);

    auto* art       = Sprite::create(file);
    const float fit = std::min(visible.width / size.width, visible.height / size.height);
    art->setScale(fit);
    art->setPosition(centerX, origin.y + visible.height / 2);
    root->addChild(art, 1);

    // Soften the picture's left and right edges into the darkened fill.
    const float w     = size.width * fit;
    const float edge  = std::min(48.0f, w * 0.12f);
    const float left  = centerX - w / 2;
    const float right = centerX + w / 2;
    auto* fadeL       = LayerGradient::create(Color4B(0, 0, 0, 170), Color4B(0, 0, 0, 0), Vec2(1, 0));
    fadeL->setContentSize(Vec2(edge, visible.height));
    fadeL->setPosition(left, origin.y);
    root->addChild(fadeL, 2);
    auto* fadeR = LayerGradient::create(Color4B(0, 0, 0, 0), Color4B(0, 0, 0, 170), Vec2(1, 0));
    fadeR->setContentSize(Vec2(edge, visible.height));
    fadeR->setPosition(right - edge, origin.y);
    root->addChild(fadeR, 2);
    return root;
}

MenuItemSprite* panelButton(std::string_view frame, std::string_view text, const ccMenuCallback& onTap)
{
    auto* normal   = Sprite::createWithSpriteFrameName(frame);
    auto* selected = Sprite::createWithSpriteFrameName(frame);
    selected->setColor(Color3B(150, 170, 255));
    auto* item = MenuItemSprite::create(normal, selected, onTap);

    auto* label      = atlasLabel(text);
    const auto box   = item->getContentSize();
    const auto lsize = label->getContentSize();
    // One text size for every button (fits 11 characters), shrunk only for longer labels.
    label->setScale(std::min(0.40f, (box.width - 24) / lsize.width));
    label->setAnchorPoint(Vec2::ANCHOR_MIDDLE);
    label->setPosition(box / 2);
    item->addChild(label);
    return item;
}

void toast(Node* scene, std::string_view text)
{
    auto* director     = Director::getInstance();
    const auto visible = director->getVisibleSize();
    const auto origin  = director->getVisibleOrigin();

    auto* label = Label::createWithTTF(text, "fonts/GROBOLD.ttf", 13);
    label->enableOutline(Color4B::BLACK, 1);
    const auto size = label->getContentSize();

    auto* box = LayerColor::create(Color4B(0, 0, 0, 170), size.width + 24, size.height + 12);
    box->setCascadeOpacityEnabled(true);
    box->setPosition(origin.x + (visible.width - box->getContentSize().width) / 2, origin.y + 28);
    label->setPosition(box->getContentSize() / 2);
    box->addChild(label);
    box->setOpacity(0);
    box->runAction(Sequence::create(FadeTo::create(0.15f, 170), DelayTime::create(1.8f), FadeOut::create(0.35f),
                                    RemoveSelf::create(), nullptr));
    scene->addChild(box, 100);
}

Node* quickChatGrid(const std::function<void(int)>& onPick)
{
    const auto visible = Director::getInstance()->getVisibleSize();
    const auto origin  = Director::getInstance()->getVisibleOrigin();
    auto* layer        = LayerColor::create(Color4B(0, 0, 0, 150));
    auto* menu         = Menu::create();
    menu->setPosition(Vec2::ZERO);
    layer->addChild(menu);
    const float cellW = std::min(120.0f, visible.width / 4.4f), cellH = 34.0f;
    for (int i = 0; i < 12; ++i)
    {
        const int col = i % 4, row = i / 4;
        auto* label = Label::createWithTTF(net::kQuickMessages[i], "fonts/arial.ttf", 11);
        label->setColor(Color3B::WHITE);
        auto* bg  = LayerColor::create(Color4B(40, 60, 110, 230), cellW - 6, cellH - 6);
        bg->setIgnoreAnchorPointForPosition(false);
        bg->setAnchorPoint({0.5f, 0.5f});
        label->setPosition(bg->getContentSize() / 2);
        bg->addChild(label);
        auto* item = MenuItemSprite::create(bg, bg, [layer, onPick, i](Object*) {
            onPick(i);
            layer->removeFromParent();
        });
        item->setPosition(origin.x + visible.width / 2 + (col - 1.5f) * cellW, origin.y + visible.height / 2 + (1 - row) * cellH);
        menu->addChild(item);
    }
    auto* touch           = EventListenerTouchOneByOne::create();
    touch->setSwallowTouches(true);
    touch->onTouchBegan   = [](Touch*, Event*) { return true; };
    touch->onTouchEnded   = [layer](Touch*, Event*) { layer->removeFromParent(); };
    layer->getEventDispatcher()->addEventListenerWithSceneGraphPriority(touch, layer);
    return layer;
}

}  // namespace mm::app::ui

// The look of the M6 menus: dark gradient screens, pill buttons that press in, sliders and
// toggles, and a soft pop-in when a screen opens. Pure drawing code, no game rules.
#pragma once

#include <functional>
#include <string>

#include "axmol.h"

namespace mm::app::style
{

inline const ax::Color3B kAccent{255, 190, 60};
inline const ax::Color3B kPanel{34, 42, 74};
inline const ax::Color3B kGood{90, 200, 110};
inline const ax::Color3B kBad{220, 80, 80};

// Full-screen background: a vertical gradient with a faint stripe pattern.
ax::Node* background();
// Screen heading, top centre.
ax::LabelAtlas* heading(const std::string& text);
ax::Label* text(const std::string& s, float size = 12, ax::Color3B colour = ax::Color3B::WHITE);

// A rounded button that squashes when pressed. `size` in points.
ax::Node* pill(const std::string& label, ax::Size size, std::function<void()> onTap,
               ax::Color3B colour = ax::Color3B(52, 84, 170));
// Same, but the label can change later (toggles, selectors).
struct Pill
{
    ax::Node* node  = nullptr;
    ax::LabelAtlas* label = nullptr;  // the original bitmap font: UPPER CASE letters, digits, punctuation
};
Pill pillWithLabel(const std::string& label, ax::Size size, std::function<void()> onTap,
                   ax::Color3B colour = ax::Color3B(52, 84, 170));
void setPillColour(ax::Node* pill, ax::Color3B colour);

// A horizontal slider; calls onChange(value) while dragging and once at the end.
ax::Node* slider(ax::Size size, int min, int max, int value, std::function<void(int)> onChange);

// Slides and fades the children of `root` in one after another.
void popIn(ax::Node* root, float firstDelay = 0.0f, float step = 0.04f);

// A dim layer with a box and two buttons; used for "Play the training?" and confirmations.
ax::Node* dialog(const std::string& message, const std::string& yes, const std::string& no,
                 std::function<void()> onYes, std::function<void()> onNo);

// The device's back button / gesture: calls onBack.
void onBack(ax::Node* scene, std::function<void()> onBack);

}  // namespace mm::app::style

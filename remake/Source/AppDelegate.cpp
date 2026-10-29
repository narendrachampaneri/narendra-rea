/****************************************************************************
 Copyright (c) 2017-2018 Xiamen Yaji Software Co., Ltd.
 Copyright (c) 2019-present Axmol Engine contributors (see AUTHORS.md).

 https://axmol.dev/

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 ****************************************************************************/

#include "AppDelegate.h"

#include "app/AssetManager.h"
#include "app/AssetViewerScene.h"
#include "app/AudioSystem.h"
#include "assets/Resolution.h"

#if _AX_TESTS
#   include "doctest/doctest.h"
#endif

using namespace ax;

// Desktop window size; phones always use their full screen.
static ax::Size desktopWindowSize = ax::Size(1200, 540);

AppDelegate::AppDelegate() {}

AppDelegate::~AppDelegate() {}

// if you want a different context, modify the value of gfxContextAttrs
// it will affect all platforms
void AppDelegate::initGfxContextAttrs()
{
    // set graphics context attributes: red,green,blue,alpha,depth,stencil,multisamplesCount
    GfxContextAttrs gfxContextAttrs = {8, 8, 8, 8, 24, 8, 0};
    // since axmol-2.2 vsync was enabled in engine by default
    // gfxContextAttrs.vsync = false;

    RenderView::setGfxContextAttrs(gfxContextAttrs);
}

bool AppDelegate::applicationDidFinishLaunching()
{
    // initialize director
    auto director = Director::getInstance();
    auto renderView   = director->getRenderView();
    if (!renderView)
    {
#if (AX_TARGET_PLATFORM != AX_PLATFORM_ANDROID) && (AX_TARGET_PLATFORM != AX_PLATFORM_IOS)
        renderView = RenderViewImpl::createWithRect(
            "Mini Militia by Kadiyafali", ax::Rect(0, 0, desktopWindowSize.width, desktopWindowSize.height));
#else
        renderView = RenderViewImpl::create("Mini Militia by Kadiyafali");
#endif
        director->setRenderView(renderView);
    }

    // turn on display FPS
#ifndef NDEBUG
    director->setStatsDisplay(true);
#endif

    // set FPS. the default value is 1.0/60 if you don't call this
    director->setAnimationInterval(1.0f / 60);

    // The original's coordinate system: 480x320 design points, fixed height, so wider phones
    // see more of the map sideways (AppDelegate::applicationDidFinishLaunching).
    renderView->setDesignResolutionSize(mm::assets::kDesignWidth, mm::assets::kDesignHeight,
                                        ResolutionPolicy::FIXED_HEIGHT);

    // Art resolution: the original rule for now; Settings > Graphics quality overrides it in M7.
    const auto frame = renderView->getFrameSize();
    mm::app::AssetManager::get().configure(mm::assets::chooseOriginal(frame.width, frame.height));
    mm::app::AssetManager::get().loadSharedAtlases();
    mm::app::AudioSystem::get().preloadEffects();

#if !_AX_TESTS
    director->runWithScene(utils::createInstance<mm::app::AssetViewerScene>());
#endif

    return true;
}

// This function will be called when the app is inactive. Note, when receiving a phone call it is invoked.
void AppDelegate::applicationDidEnterBackground()
{
    Director::getInstance()->stopAnimation();

    mm::app::AudioSystem::get().pauseAll();
}

// this function will be called when the app is active again
void AppDelegate::applicationWillEnterForeground()
{
    Director::getInstance()->startAnimation();

    mm::app::AudioSystem::get().resumeAll();
}

void AppDelegate::applicationWillQuit() {}

#if _AX_TESTS
int AppDelegate::run(int argc, char** argv) {
    AXLOGI("Running unit tests...\n");
    fflush(stdout);
    AXLOGI("Default resource path: {}\n", FileUtils::getInstance()->getDefaultResourceRootPath());
    AXLOGI("Writable path: {}\n", FileUtils::getInstance()->getWritablePath());
    {
        for (auto& path : FileUtils::getInstance()->getSearchPaths())
            AXLOGI("Search path: {}\n", path);
    }
    fflush(stdout);

    ax::Director::getInstance()->init();

    doctest::Context context;

    //context.addFilter("test-case-exclude", "*math*"); // exclude test cases with "math" in their name
    //context.setOption("abort-after", 5);              // stop test execution after 5 failed assertions

    //context.setOption("order-by", "name");            // sort the test cases by their name

    context.applyCommandLine(argc, argv);

    // overrides
    context.setOption("no-breaks", true);             // don't break in the debugger when assertions fail

    int res = context.run(); // run
    return res;
}
#endif

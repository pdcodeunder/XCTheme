//
//  ThemeObjc+UIPageControl.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/3.
//

import Foundation
import UIKit

public extension UIPageControl {
    @objc override var theme_oc: XCThemePageControl {
        return XCThemePageControl(base: self)
    }
}

open class XCThemePageControl: XCThemeView {
    private var base: XCTheme<UIPageControl>? {
        get {
            (_base as? UIPageControl)?.theme
        }
        set { }
    }
}

public extension XCThemePageControl {
    @objc var pageIndicatorTintColor: XCThemeColor? {
        get {
            base?.pageIndicatorTintColor
        }
        set {
            base?.pageIndicatorTintColor = newValue
        }
    }
    
    @objc var currentPageIndicatorTintColor: XCThemeColor? {
        get {
            base?.currentPageIndicatorTintColor
        }
        set {
            base?.currentPageIndicatorTintColor = newValue
        }
    }
    
    @available(iOS 14.0, *)
    @objc var preferredIndicatorImage: XCThemeImage? {
        get {
            base?.preferredIndicatorImage
        }
        set {
            base?.preferredIndicatorImage = newValue
        }
    }
    
    @available(iOS 14.0, *)
    @objc func indicatorImage(forPage page: Int) -> XCThemeImage? {
        base?.indicatorImage(forPage: page)
    }
    
    @available(iOS 14.0, *)
    @objc func setIndicatorImage(_ image: XCThemeImage?, forPage page: Int) {
        base?.setIndicatorImage(image, forPage: page)
    }
}

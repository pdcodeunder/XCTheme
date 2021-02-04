//
//  ThemeObjc+UINavigationBar.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/3.
//

import Foundation
import UIKit

public extension UINavigationBar {
    @objc override var theme_oc: XCThemeNavigationBar {
        return XCThemeNavigationBar(base: self)
    }
}

open class XCThemeNavigationBar: XCThemeView {
    private var base: XCTheme<UINavigationBar>? {
        get {
            (_base as? UINavigationBar)?.theme
        }
        set { }
    }
}

public extension XCThemeNavigationBar {
    @objc var barTintColor: XCThemeColor? {
        get {
            base?.barTintColor
        }
        set {
            base?.barTintColor = newValue
        }
    }
    
    @objc func setBackgroundImage(_ backgroundImage: XCThemeImage?, for barPosition: UIBarPosition, barMetrics: UIBarMetrics) {
        base?.setBackgroundImage(backgroundImage, for: barPosition, barMetrics: barMetrics)
    }
    
    @objc func backgroundImage(for barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> XCThemeImage? {
        base?.backgroundImage(for: barPosition, barMetrics: barMetrics)
    }
    
    @objc func setBackgroundImage(_ backgroundImage: XCThemeImage?, for barMetrics: UIBarMetrics) {
        base?.setBackgroundImage(backgroundImage, for: barMetrics)
    }
    
    @objc func backgroundImage(for barMetrics: UIBarMetrics) -> XCThemeImage? {
        base?.backgroundImage(for: barMetrics)
    }
    
    @objc var shadowImage: XCThemeImage? {
        get {
            base?.shadowImage
        }
        set {
            base?.shadowImage = newValue
        }
    }
    
    @objc var backIndicatorImage: XCThemeImage? {
        get {
            base?.backIndicatorImage
        }
        set {
            base?.backIndicatorImage = newValue
        }
    }
    
    @objc var backIndicatorTransitionMaskImage: XCThemeImage? {
        get {
            base?.backIndicatorTransitionMaskImage
        }
        set {
            base?.backIndicatorTransitionMaskImage = newValue
        }
    }
}



//
//  ThemeObjc+UITabBar.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/3.
//

import Foundation
import UIKit

public extension UITabBar {
    @objc override var theme_oc: XCThemeTabBar {
        return XCThemeTabBar(base: self)
    }
}

open class XCThemeTabBar: XCThemeView {
    private var base: XCTheme<UITabBar>? {
        get {
            (_base as? UITabBar)?.theme
        }
        set { }
    }
}

public extension XCThemeTabBar {
    @objc var barTintColor: XCThemeColor? {
        get {
            base?.barTintColor
        }
        set {
            base?.barTintColor = newValue
        }
    }
}

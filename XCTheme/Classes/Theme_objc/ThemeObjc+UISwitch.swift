//
//  ThemeObjc+UISwitch.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/3.
//

import Foundation
import UIKit

public extension UISwitch {
    @objc override var theme_oc: XCThemeSwitch {
        return XCThemeSwitch(base: self)
    }
}

open class XCThemeSwitch: XCThemeView {
    private var base: XCTheme<UISwitch>? {
        get {
            (_base as? UISwitch)?.theme
        }
        set { }
    }
}

public extension XCThemeSwitch {
    @objc var onTintColor: XCThemeColor? {
        get {
            base?.onTintColor
        }
        set {
            base?.onTintColor = newValue
        }
    }
    
    @objc var thumbTintColor: XCThemeColor? {
        get {
            base?.thumbTintColor
        }
        set {
            base?.thumbTintColor = newValue
        }
    }
}


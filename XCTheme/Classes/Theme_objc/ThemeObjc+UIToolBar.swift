//
//  ThemeObjc+UIToolBar.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/3.
//

import Foundation
import UIKit

public extension UIToolbar {
    @objc override var theme_oc: XCThemeToolbar {
        return XCThemeToolbar(base: self)
    }
}

open class XCThemeToolbar: XCThemeView {
    private var base: XCTheme<UIToolbar>? {
        get {
            (_base as? UIToolbar)?.theme
        }
        set { }
    }
}

public extension XCThemeToolbar {
    @objc var barTintColor: XCThemeColor? {
        get {
            base?.barTintColor
        }
        set {
            base?.barTintColor = newValue
        }
    }
}



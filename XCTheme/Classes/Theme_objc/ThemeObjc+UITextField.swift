//
//  ThemeObjc+UITextField.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/3.
//

import Foundation
import UIKit

public extension UITextField {
    @objc override var theme_oc: XCThemeTextField {
        return XCThemeTextField(base: self)
    }
}

open class XCThemeTextField: XCThemeView {
    private var base: XCTheme<UITextField>? {
        get {
            (_base as? UITextField)?.theme
        }
        set { }
    }
}

public extension XCThemeTextField {
    @objc var textColor: XCThemeColor? {
        get {
            base?.textColor
        }
        set {
            base?.textColor = newValue
        }
    }
}

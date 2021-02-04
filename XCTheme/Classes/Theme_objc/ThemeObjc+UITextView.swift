//
//  ThemeObjc+UITextView.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/3.
//

import Foundation
import UIKit

public extension UITextView {
    @objc override var theme_oc: XCThemeTextView {
        return XCThemeTextView(base: self)
    }
}

open class XCThemeTextView: XCThemeView {
    private var base: XCTheme<UITextView>? {
        get {
            (_base as? UITextView)?.theme
        }
        set { }
    }
}

public extension XCThemeTextView {
    @objc var textColor: XCThemeColor? {
        get {
            base?.textColor
        }
        set {
            base?.textColor = newValue
        }
    }
}

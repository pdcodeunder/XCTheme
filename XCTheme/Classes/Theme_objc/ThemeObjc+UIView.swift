//
//  XCObjc+UIView.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/2.
//

import Foundation
import UIKit

public extension UIView {
    @objc var theme_oc: XCThemeView {
        return XCThemeView(base: self)
    }
}

open class XCThemeView: XCThemeObjc {
    private var base: XCTheme<UIView>? {
        get {
            (_base as? UIView)?.theme
        }
        set { }
    }
}

public extension XCThemeView {
    @objc var backgroundColor: XCThemeColor? {
        get {
            base?.backgroundColor
        }
        set {
            base?.backgroundColor = newValue
        }
    }

    @objc var tintColor: XCThemeColor? {
        get {
            base?.tintColor
        }
        set {
            base?.tintColor = newValue
        }
    }
}



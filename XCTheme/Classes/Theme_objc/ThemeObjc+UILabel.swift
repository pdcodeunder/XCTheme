//
//  XCObjc+UILabel.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/3.
//

import Foundation
import UIKit

public extension UILabel {
    @objc override var theme_oc: XCThemeLabel {
        return XCThemeLabel(base: self)
    }
}

open class XCThemeLabel: XCThemeView {
    private var base: XCTheme<UILabel>? {
        get {
            (_base as? UILabel)?.theme
        }
        set { }
    }
}

public extension XCThemeLabel {
    @objc var textColor: XCThemeColor? {
        get {
            base?.textColor
        }
        set {
            base?.textColor = newValue
        }
    }
    
    @objc var shadowColor: XCThemeColor? {
        get {
            base?.shadowColor
        }
        set {
            base?.shadowColor = newValue
        }
    }
    
    @objc var highlightedTextColor: XCThemeColor? {
        get {
            base?.highlightedTextColor
        }
        set {
            base?.highlightedTextColor = newValue
        }
    }
}

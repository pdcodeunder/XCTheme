//
//  ThemeObjc+CALayer.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/3.
//

import Foundation
import UIKit

public extension CALayer {
    @objc var theme_oc: XCThemeLayer {
        return XCThemeLayer(base: self)
    }
}

open class XCThemeLayer: XCThemeObjc {
    private var base: XCTheme<CALayer>? {
        get {
            (_base as? CALayer)?.theme
        }
        set { }
    }
}

public extension XCThemeLayer {
    @objc var borderColor: XCThemeColor? {
        get {
            base?.borderColor
        }
        set {
            base?.borderColor = newValue
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
    
    @objc var backgroundColor: XCThemeColor? {
        get {
            base?.backgroundColor
        }
        set {
            base?.backgroundColor = newValue
        }
    }
}

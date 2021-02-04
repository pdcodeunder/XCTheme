//
//  ThemeObjc+CAShapeLayer.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/3.
//

import Foundation
import UIKit

public extension CAShapeLayer {
    @objc override var theme_oc: XCThemeShapeLayer {
        return XCThemeShapeLayer(base: self)
    }
}

open class XCThemeShapeLayer: XCThemeLayer {
    private var base: XCTheme<CAShapeLayer>? {
        get {
            (_base as? CAShapeLayer)?.theme
        }
        set { }
    }
}

public extension XCThemeShapeLayer {
    @objc var fillColor: XCThemeColor? {
        get {
            base?.fillColor
        }
        set {
            base?.fillColor = newValue
        }
    }
    
    @objc var strokeColor: XCThemeColor? {
        get {
            base?.strokeColor
        }
        set {
            base?.strokeColor = newValue
        }
    }
}

//
//  CAShapeLayer+Theme.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/2.
//

import Foundation
import UIKit

public extension XCTheme where Base: CAShapeLayer {
    var fillColor: XCThemeColor? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.fillColor = newValue?.current?.cgColor
            }
        }
    }
    
    var strokeColor: XCThemeColor? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.strokeColor = newValue?.current?.cgColor
            }
        }
    }
}

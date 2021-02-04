//
//  CALayer+Theme.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/2.
//

import Foundation
import UIKit

public extension XCTheme where Base: CALayer {
    var borderColor: XCThemeColor? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.borderColor = newValue?.current?.cgColor
            }
        }
    }
    
    var shadowColor: XCThemeColor? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.shadowColor = newValue?.current?.cgColor
            }
        }
    }
    
    var backgroundColor: XCThemeColor? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.backgroundColor = newValue?.current?.cgColor
            }
        }
    }
    
}

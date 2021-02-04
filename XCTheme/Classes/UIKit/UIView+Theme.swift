//
//  UIView+Theme.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/1/27.
//

import Foundation
import UIKit

public extension XCTheme where Base: UIView {
    var backgroundColor: XCThemeColor? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.backgroundColor = newValue?.current
            }
        }
    }
    
    var tintColor: XCThemeColor? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.tintColor = newValue?.current
            }
        }
    }
}

//
//  UIBarItem+Theme.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/3.
//

import Foundation
import UIKit

public extension XCTheme where Base: UIBarItem {
    var image: XCThemeImage? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.image = newValue?.current
            }
        }
    }
    
    var landscapeImagePhone: XCThemeImage? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.landscapeImagePhone = newValue?.current
            }
        }
    }
    
    @available(iOS 11.0, *)
    var largeContentSizeImage: XCThemeImage? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.largeContentSizeImage = newValue?.current
            }
        }
    }
}

//
//  ThemeObjc+UIBarItem.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/3.
//

import Foundation
import UIKit

public extension UIBarItem {
    @objc var theme_oc: XCThemeBarItem {
        return XCThemeBarItem(base: self)
    }
}

open class XCThemeBarItem: XCThemeObjc {
    private var base: XCTheme<UIBarItem>? {
        get {
            (_base as? UIBarItem)?.theme
        }
        set { }
    }
}

public extension XCThemeBarItem {
    @objc var image: XCThemeImage? {
        get {
            base?.image
        }
        set {
            base?.image = newValue
        }
    }
    
    @objc var landscapeImagePhone: XCThemeImage? {
        get {
            base?.landscapeImagePhone
        }
        set {
            base?.landscapeImagePhone = newValue
        }
    }
    
    @available(iOS 11.0, *)
    @objc var largeContentSizeImage: XCThemeImage? {
        get {
            base?.largeContentSizeImage
        }
        set {
            base?.largeContentSizeImage = newValue
        }
    }
}

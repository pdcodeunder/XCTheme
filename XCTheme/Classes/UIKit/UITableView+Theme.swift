//
//  UITableView+Theme.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/1/29.
//

import Foundation
import UIKit

public extension XCTheme where Base: UITableView {
    var separatorColor: XCThemeColor? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.separatorColor = newValue?.current
            }
        }
    }
    
    var sectionIndexColor: XCThemeColor? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.sectionIndexColor = newValue?.current
            }
        }
    }
    
    var sectionIndexBackgroundColor: XCThemeColor? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.sectionIndexBackgroundColor = newValue?.current
            }
        }
    }
    
    var sectionIndexTrackingBackgroundColor: XCThemeColor? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.sectionIndexTrackingBackgroundColor = newValue?.current
            }
        }
    }
}

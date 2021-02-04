//
//  ThemeObjc+UITableView.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/3.
//

import Foundation
import UIKit

public extension UITableView {
    @objc override var theme_oc: XCThemeTableView {
        return XCThemeTableView(base: self)
    }
}

open class XCThemeTableView: XCThemeView {
    private var base: XCTheme<UITableView>? {
        get {
            (_base as? UITableView)?.theme
        }
        set { }
    }
}

public extension XCThemeTableView {
    @objc var separatorColor: XCThemeColor? {
        get {
            base?.separatorColor
        }
        set {
            base?.separatorColor = newValue
        }
    }
    
    @objc var sectionIndexColor: XCThemeColor? {
        get {
            base?.sectionIndexColor
        }
        set {
            base?.sectionIndexColor = newValue
        }
    }
    
    @objc var sectionIndexBackgroundColor: XCThemeColor? {
        get {
            base?.sectionIndexBackgroundColor
        }
        set {
            base?.sectionIndexBackgroundColor = newValue
        }
    }
    
    @objc var sectionIndexTrackingBackgroundColor: XCThemeColor? {
        get {
            base?.sectionIndexTrackingBackgroundColor
        }
        set {
            base?.sectionIndexTrackingBackgroundColor = newValue
        }
    }
}

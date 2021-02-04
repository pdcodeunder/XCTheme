//
//  ThemeObjc+UIProgressView.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/3.
//

import Foundation
import UIKit

public extension UIProgressView {
    @objc override var theme_oc: XCThemeProgressView {
        return XCThemeProgressView(base: self)
    }
}

open class XCThemeProgressView: XCThemeView {
    private var base: XCTheme<UIProgressView>? {
        get {
            (_base as? UIProgressView)?.theme
        }
        set { }
    }
}

public extension XCThemeProgressView {
    @objc var progressTintColor: XCThemeColor? {
        get {
            base?.progressTintColor
        }
        set {
            base?.progressTintColor = newValue
        }
    }
    
    @objc var trackTintColor: XCThemeColor? {
        get {
            base?.trackTintColor
        }
        set {
            base?.trackTintColor = newValue
        }
    }
    
    @objc var progressImage: XCThemeImage? {
        get {
            base?.progressImage
        }
        set {
            base?.progressImage = newValue
        }
    }
    
    @objc var trackImage: XCThemeImage? {
        get {
            base?.trackImage
        }
        set {
            base?.trackImage = newValue
        }
    }
}

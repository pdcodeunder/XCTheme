//
//  ThemeObjc+UIImageView.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/3.
//

import Foundation
import UIKit

public extension UIImageView {
    @objc override var theme_oc: XCThemeImageView {
        return XCThemeImageView(base: self)
    }
}

open class XCThemeImageView: XCThemeView {
    private var base: XCTheme<UIImageView>? {
        get {
            (_base as? UIImageView)?.theme
        }
        set { }
    }
}

public extension XCThemeImageView {
    @objc var image: XCThemeImage? {
        get {
            base?.image
        }
        set {
            base?.image = newValue
        }
    }
    
    @objc var highlightedImage: XCThemeImage? {
        get {
            base?.highlightedImage
        }
        set {
            base?.highlightedImage = newValue
        }
    }
    
    @objc var animationImages: [XCThemeImage]? {
        get {
            base?.animationImages
        }
        set {
            base?.animationImages = newValue
        }
    }
    
    @objc var highlightedAnimationImages: [XCThemeImage]? {
        get {
            base?.highlightedAnimationImages
        }
        set {
            base?.highlightedAnimationImages = newValue
        }
    }
}

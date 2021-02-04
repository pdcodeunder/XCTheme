//
//  ThemeObjc+UISlider.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/3.
//

import Foundation
import UIKit

public extension UISlider {
    @objc override var theme_oc: XCThemeSlider {
        return XCThemeSlider(base: self)
    }
}

open class XCThemeSlider: XCThemeView {
    private var base: XCTheme<UISlider>? {
        get {
            (_base as? UISlider)?.theme
        }
        set { }
    }
}

public extension XCThemeSlider {
    @objc var minimumValueImage: XCThemeImage? {
        get {
            base?.minimumValueImage
        }
        set {
            base?.minimumValueImage = newValue
        }
    }
    
    @objc var maximumValueImage: XCThemeImage? {
        get {
            base?.maximumValueImage
        }
        set {
            base?.maximumValueImage = newValue
        }
    }
    
    @objc var minimumTrackTintColor: XCThemeColor? {
        get {
            base?.minimumTrackTintColor
        }
        set {
            base?.minimumTrackTintColor = newValue
        }
    }
    
    @objc var maximumTrackTintColor: XCThemeColor? {
        get {
            base?.maximumTrackTintColor
        }
        set {
            base?.maximumTrackTintColor = newValue
        }
    }
    
    @objc var thumbTintColor: XCThemeColor? {
        get {
            base?.thumbTintColor
        }
        set {
            base?.thumbTintColor = newValue
        }
    }
    
    @objc func setThumbImage(_ image: XCThemeImage?, for state: UIControl.State) {
        base?.setThumbImage(image, for: state)
    }
    
    @objc func thumbImage(for state: UIControl.State) -> XCThemeImage? {
        base?.thumbImage(for: state)
    }
    
    @objc var currentThumbImage: XCThemeImage? {
        base?.currentThumbImage
    }
    
    @objc func setMinimumTrackImage(_ image: XCThemeImage?, for state: UIControl.State) {
        base?.setMinimumTrackImage(image, for: state)
    }
    
    @objc func minimumTrackImage(for state: UIControl.State) -> XCThemeImage? {
        base?.minimumTrackImage(for: state)
    }
    
    @objc var currentMinimumTrackImage: XCThemeImage? {
        base?.currentMinimumTrackImage
    }
    
    @objc func setMaximumTrackImage(_ image: XCThemeImage?, for state: UIControl.State) {
        base?.setMaximumTrackImage(image, for: state)
    }
    
    @objc func maximumTrackImage(for state: UIControl.State) -> XCThemeImage? {
        base?.maximumTrackImage(for: state)
    }
    
    @objc var currentMaximumTrackImage: XCThemeImage? {
        base?.currentMaximumTrackImage
    }
}


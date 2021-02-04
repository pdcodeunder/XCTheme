//
//  UISlider+Theme.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/1/29.
//

import Foundation
import UIKit

public extension XCTheme where Base: UISlider {
    
    var minimumValueImage: XCThemeImage? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.minimumValueImage = newValue?.current
            }
        }
    }
    
    var maximumValueImage: XCThemeImage? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.maximumValueImage = newValue?.current
            }
        }
    }
    
    var minimumTrackTintColor: XCThemeColor? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.minimumTrackTintColor = newValue?.current
            }
        }
    }
    
    var maximumTrackTintColor: XCThemeColor? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.maximumTrackTintColor = newValue?.current
            }
        }
    }
    
    var thumbTintColor: XCThemeColor? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.thumbTintColor = newValue?.current
            }
        }
    }
    
    func setThumbImage(_ image: XCThemeImage?, for state: UIControl.State) {
        setProperty(key: "thumbImagestate:\(state.rawValue)", original: image) { [weak base = _base] in
            base?.setThumbImage(image?.current, for: state)
        }
    }
    
    func thumbImage(for state: UIControl.State) -> XCThemeImage? {
        getProperty(with: "thumbImagestate:\(state.rawValue)")
    }
    
    var currentThumbImage: XCThemeImage? {
        getProperty(with: "thumbImagestate:\(_base.state.rawValue)")
    }
    
    func setMinimumTrackImage(_ image: XCThemeImage?, for state: UIControl.State) {
        setProperty(key: "minimumTrackImage:\(state.rawValue)", original: image) { [weak base = _base] in
            base?.setMinimumTrackImage(image?.current, for: state)
        }
    }
    
    func minimumTrackImage(for state: UIControl.State) -> XCThemeImage? {
        getProperty(with: "minimumTrackImage:\(state.rawValue)")
    }
    
    var currentMinimumTrackImage: XCThemeImage? {
        getProperty(with: "minimumTrackImage:\(_base.state.rawValue)")
    }
    
    func setMaximumTrackImage(_ image: XCThemeImage?, for state: UIControl.State) {
        setProperty(key: "maximumTrackImage:\(state.rawValue)", original: image) { [weak base = _base] in
            base?.setMaximumTrackImage(image?.current, for: state)
        }
    }
    
    func maximumTrackImage(for state: UIControl.State) -> XCThemeImage? {
        getProperty(with: "maximumTrackImage:\(state.rawValue)")
    }
    
    var currentMaximumTrackImage: XCThemeImage? {
        getProperty(with: "maximumTrackImage:\(_base.state.rawValue)")
    }
}

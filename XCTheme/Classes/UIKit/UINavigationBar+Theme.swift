//
//  UINavigationBar+Theme.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/2.
//

import Foundation
import UIKit

public extension XCTheme where Base: UINavigationBar {
    var barTintColor: XCThemeColor? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.barTintColor = newValue?.current
            }
        }
    }
    
    func setBackgroundImage(_ backgroundImage: XCThemeImage?, for barPosition: UIBarPosition, barMetrics: UIBarMetrics) {
        setProperty(key: "sbgimgfor:\(barPosition.rawValue)barMetrics:\(barMetrics.rawValue)", original: backgroundImage) { [weak base = _base] in
            base?.setBackgroundImage(backgroundImage?.current, for: barPosition, barMetrics: barMetrics)
        }
    }
    
    func backgroundImage(for barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> XCThemeImage? {
        getProperty(with: "sbgimgfor:\(barPosition.rawValue)barMetrics:\(barMetrics.rawValue)")
    }
    
    func setBackgroundImage(_ backgroundImage: XCThemeImage?, for barMetrics: UIBarMetrics) {
        setProperty(key: "sbgimgfor\(barMetrics.rawValue)", original: backgroundImage) { [weak base = _base] in
            base?.setBackgroundImage(backgroundImage?.current, for: barMetrics)
        }
    }
    
    func backgroundImage(for barMetrics: UIBarMetrics) -> XCThemeImage? {
        getProperty(with: "sbgimgfor\(barMetrics.rawValue)")
    }
    
    var shadowImage: XCThemeImage? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.shadowImage = newValue?.current
            }
        }
    }
    
    var backIndicatorImage: XCThemeImage? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.backIndicatorImage = newValue?.current
            }
        }
    }
    
    var backIndicatorTransitionMaskImage: XCThemeImage? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.backIndicatorTransitionMaskImage = newValue?.current
            }
        }
    }
    
    
}

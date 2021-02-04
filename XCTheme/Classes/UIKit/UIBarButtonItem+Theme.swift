//
//  UIBarButtonItem+Theme.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/2.
//

import Foundation
import UIKit

public extension XCTheme where Base: UIBarButtonItem {
    func setBackgroundImage(_ backgroundImage: XCThemeImage?, for state: UIControl.State, barMetrics: UIBarMetrics) {
        setProperty(key: "sbgImgstate:\(state.rawValue)barMetrics:\(barMetrics.rawValue)", original: backgroundImage) { [weak base = _base] in
            base?.setBackgroundImage(backgroundImage?.current, for: state, barMetrics: barMetrics)
        }
    }

    
    func backgroundImage(for state: UIControl.State, barMetrics: UIBarMetrics) -> XCThemeImage? {
        getProperty(with: "sbgImgstate:\(state.rawValue)barMetrics:\(barMetrics.rawValue)")
    }
    
    func setBackgroundImage(_ backgroundImage: XCThemeImage?, for state: UIControl.State, style: UIBarButtonItem.Style, barMetrics: UIBarMetrics) {
        setProperty(key: "sbgImgstate:\(state.rawValue)style:\(style.rawValue)barMetrics:\(barMetrics.rawValue)", original: backgroundImage) { [weak base = _base] in
            base?.setBackgroundImage(backgroundImage?.current, for: state, style: style, barMetrics: barMetrics)
        }
    }

    func backgroundImage(for state: UIControl.State, style: UIBarButtonItem.Style, barMetrics: UIBarMetrics) -> XCThemeImage? {
        getProperty(with: "sbgImgstate:\(state.rawValue)style:\(style.rawValue)barMetrics:\(barMetrics.rawValue)")
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
    
    func setBackButtonBackgroundImage(_ backgroundImage: XCThemeImage?, for state: UIControl.State, barMetrics: UIBarMetrics) {
        setProperty(key: "sbbtnbgImgstate:\(state.rawValue)barMetrics:\(barMetrics.rawValue)", original: backgroundImage) { [weak base = _base] in
            base?.setBackButtonBackgroundImage(backgroundImage?.current, for: state, barMetrics: barMetrics)
        }
    }

    func backButtonBackgroundImage(for state: UIControl.State, barMetrics: UIBarMetrics) -> UIImage? {
        getProperty(with: "sbbtnbgImgstate:\(state.rawValue)barMetrics:\(barMetrics.rawValue)")
    }
}

//
//  ThemeObjc+UIBarButtonItem.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/3.
//

import Foundation
import UIKit

public extension UIBarButtonItem {
    @objc override var theme_oc: XCThemeBarButtonItem {
        return XCThemeBarButtonItem(base: self)
    }
}

open class XCThemeBarButtonItem: XCThemeBarItem {
    private var base: XCTheme<UIBarButtonItem>? {
        get {
            (_base as? UIBarButtonItem)?.theme
        }
        set { }
    }
}

public extension XCThemeBarButtonItem {
    @objc func setBackgroundImage(_ backgroundImage: XCThemeImage?, for state: UIControl.State, barMetrics: UIBarMetrics) {
        base?.setBackgroundImage(backgroundImage, for: state, barMetrics: barMetrics)
    }

    
    @objc func backgroundImage(for state: UIControl.State, barMetrics: UIBarMetrics) -> XCThemeImage? {
        base?.backgroundImage(for: state, barMetrics: barMetrics)
    }
    
    @objc func setBackgroundImage(_ backgroundImage: XCThemeImage?, for state: UIControl.State, style: UIBarButtonItem.Style, barMetrics: UIBarMetrics) {
        base?.setBackgroundImage(backgroundImage, for: state, style: style, barMetrics: barMetrics)
    }

    @objc func backgroundImage(for state: UIControl.State, style: UIBarButtonItem.Style, barMetrics: UIBarMetrics) -> XCThemeImage? {
        base?.backgroundImage(for: state, style: style, barMetrics: barMetrics)
    }
    
    @objc var tintColor: XCThemeColor? {
        get {
            base?.tintColor
        }
        set {
            base?.tintColor = newValue
        }
    }
    
    func setBackButtonBackgroundImage(_ backgroundImage: XCThemeImage?, for state: UIControl.State, barMetrics: UIBarMetrics) {
        base?.setBackButtonBackgroundImage(backgroundImage, for: state, barMetrics: barMetrics)
    }

    func backButtonBackgroundImage(for state: UIControl.State, barMetrics: UIBarMetrics) -> UIImage? {
        base?.backButtonBackgroundImage(for: state, barMetrics: barMetrics)
    }
}

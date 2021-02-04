//
//  ThemeObjc+UISearchBar.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/3.
//

import Foundation
import UIKit

public extension UISearchBar {
    @objc override var theme_oc: XCThemeSearchBar {
        return XCThemeSearchBar(base: self)
    }
}

open class XCThemeSearchBar: XCThemeView {
    private var base: XCTheme<UISearchBar>? {
        get {
            (_base as? UISearchBar)?.theme
        }
        set { }
    }
}

public extension XCThemeSearchBar {
    @objc var barTintColor: XCThemeColor? {
        get {
            base?.barTintColor
        }
        set {
            base?.barTintColor = newValue
        }
    }
    
    @objc var backgroundImage: XCThemeImage? {
        get {
            base?.backgroundImage
        }
        set {
            base?.backgroundImage = newValue
        }
    }
    
    @objc var scopeBarBackgroundImage: XCThemeImage? {
        get {
            base?.scopeBarBackgroundImage
        }
        set {
            base?.scopeBarBackgroundImage = newValue
        }
    }
    
    @objc func setBackgroundImage(_ backgroundImage: XCThemeImage?, for barPosition: UIBarPosition, barMetrics: UIBarMetrics) {
        base?.setBackgroundImage(backgroundImage, for: barPosition, barMetrics: barMetrics)
    }
    
    @objc func backgroundImage(for barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> XCThemeImage? {
        base?.backgroundImage(for: barPosition, barMetrics: barMetrics)
    }
    
    @objc func setSearchFieldBackgroundImage(_ backgroundImage: XCThemeImage?, for state: UIControl.State) {
        base?.setSearchFieldBackgroundImage(backgroundImage, for: state)
    }
    
    @objc func searchFieldBackgroundImage(for state: UIControl.State) -> XCThemeImage? {
        base?.searchFieldBackgroundImage(for: state)
    }
    
    @objc func setImage(_ iconImage: XCThemeImage?, for icon: UISearchBar.Icon, state: UIControl.State) {
        base?.setImage(iconImage, for: icon, state: state)
    }
    
    @objc func image(for icon: UISearchBar.Icon, state: UIControl.State) -> XCThemeImage? {
        base?.image(for: icon, state: state)
    }
    
    @objc func setScopeBarButtonBackgroundImage(_ backgroundImage: XCThemeImage?, for state: UIControl.State) {
        base?.setScopeBarButtonBackgroundImage(backgroundImage, for: state)
    }
    
    @objc func scopeBarButtonBackgroundImage(for state: UIControl.State) -> XCThemeImage? {
        base?.scopeBarButtonBackgroundImage(for: state)
    }
    
    @objc func setScopeBarButtonDividerImage(_ dividerImage: XCThemeImage?, forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State) {
        base?.setScopeBarButtonDividerImage(dividerImage, forLeftSegmentState: leftState, rightSegmentState: rightState)
    }
    
    @objc func scopeBarButtonDividerImage(forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State) -> XCThemeImage? {
        base?.scopeBarButtonDividerImage(forLeftSegmentState: leftState, rightSegmentState: rightState)
    }
}

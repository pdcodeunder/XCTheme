//
//  UISearchBar+Theme.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/1/29.
//

import Foundation
import UIKit

public extension XCTheme where Base: UISearchBar {
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
    
    var backgroundImage: XCThemeImage? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.backgroundImage = newValue?.current
            }
        }
    }
    
    var scopeBarBackgroundImage: XCThemeImage? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.scopeBarBackgroundImage = newValue?.current
            }
        }
    }
    
    func setBackgroundImage(_ backgroundImage: XCThemeImage?, for barPosition: UIBarPosition, barMetrics: UIBarMetrics) {
        setProperty(key: "bimg:p:\(barPosition.rawValue)b:\(barMetrics.rawValue)", original: backgroundImage) { [weak base = _base] in
            base?.setBackgroundImage(backgroundImage?.current, for: barPosition, barMetrics: barMetrics)
        }
    }
    
    func backgroundImage(for barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> XCThemeImage? {
        getProperty(with: "bimg:p:\(barPosition.rawValue)b:\(barMetrics.rawValue)")
    }
    
    func setSearchFieldBackgroundImage(_ backgroundImage: XCThemeImage?, for state: UIControl.State) {
        setProperty(key: "sfbimg:state:\(state.rawValue)", original: backgroundImage) { [weak base = _base] in
            base?.setSearchFieldBackgroundImage(backgroundImage?.current, for: state)
        }
    }
    
    func searchFieldBackgroundImage(for state: UIControl.State) -> XCThemeImage? {
        getProperty(with: "sfbimg:state:\(state.rawValue)")
    }
    
    func setImage(_ iconImage: XCThemeImage?, for icon: UISearchBar.Icon, state: UIControl.State) {
        setProperty(key: "img:icon\(icon.rawValue)state:\(state.rawValue)", original: iconImage) { [weak base = _base] in
            base?.setImage(iconImage?.current, for: icon, state: state)
        }
    }
    
    func image(for icon: UISearchBar.Icon, state: UIControl.State) -> XCThemeImage? {
        getProperty(with: "img:icon\(icon.rawValue)state:\(state.rawValue)")
    }
    
    func setScopeBarButtonBackgroundImage(_ backgroundImage: XCThemeImage?, for state: UIControl.State) {
        setProperty(key: "sbbbimg:state\(state.rawValue)", original: backgroundImage) { [weak base = _base] in
            base?.setScopeBarButtonBackgroundImage(backgroundImage?.current, for: state)
        }
    }
    
    func scopeBarButtonBackgroundImage(for state: UIControl.State) -> XCThemeImage? {
        getProperty(with: "sbbbimg:state\(state.rawValue)")
    }
    
    func setScopeBarButtonDividerImage(_ dividerImage: XCThemeImage?, forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State) {
        setProperty(key: "sbbdimg:leftState:\(leftState.rawValue)rightState:\(rightState.rawValue)", original: dividerImage) { [weak base = _base] in
            base?.setScopeBarButtonDividerImage(dividerImage?.current, forLeftSegmentState: leftState, rightSegmentState: rightState)
        }
    }
    
    func scopeBarButtonDividerImage(forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State) -> XCThemeImage? {
        getProperty(with: "sbbdimg:leftState:\(leftState.rawValue)rightState:\(rightState.rawValue)")
    }
    
    
}

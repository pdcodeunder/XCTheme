//
//  UIButton+Theme.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/1/27.
//

import Foundation
import UIKit

public extension XCTheme where Base: UIButton {
    func setTitleColor(_ color: XCThemeColor?, for state: UIControl.State) {
        setProperty(key: "titleColor:state:\(state.rawValue)", original: color) { [weak base = _base] in
            base?.setTitleColor(color?.current, for: state)
        }
    }
    
    func titleColor(for state: UIControl.State) -> XCThemeColor? {
        getProperty(with: "titleColor:state:\(state.rawValue)")
    }
    
    func setTitleShadowColor(_ color: XCThemeColor?, for state: UIControl.State) {
        setProperty(key: "tsc:state:\(state.rawValue)", original: color) { [weak base = _base] in
            base?.setTitleShadowColor(color?.current, for: state)
        }
    }
    
    func titleShadowColor(for state: UIControl.State) -> XCThemeColor? {
        getProperty(with: "tsc:state:\(state.rawValue)")
    }
    
    func setImage(_ image: XCThemeImage?, for state: UIControl.State) {
        setProperty(key: "setImage:state:\(state.rawValue)", original: image) { [weak base = _base] in
            base?.setImage(image?.current, for: state)
        }
    }
    
    func image(for state: UIControl.State) -> XCThemeImage? {
        getProperty(with: "setImage:state:\(state.rawValue)")
    }
    
    func setBackgroundImage(_ image: XCThemeImage?, for state: UIControl.State) {
        setProperty(key: "setbgImage:state:\(state.rawValue)", original: image) { [weak base = _base] in
            base?.setBackgroundImage(image?.current, for: state)
        }
    }
    
    func backgroundImage(for state: UIControl.State) -> XCThemeImage? {
        getProperty(with: "setbgImage:state:\(state.rawValue)")
    }
}

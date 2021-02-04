//
//  XCObjc+UIButton.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/3.
//

import Foundation
import UIKit

public extension UIButton {
    @objc override var theme_oc: XCThemeButton {
        return XCThemeButton(base: self)
    }
}

open class XCThemeButton: XCThemeView {
    private var base: XCTheme<UIButton>? {
        get {
            (_base as? UIButton)?.theme
        }
        set { }
    }
}

public extension XCThemeButton {
    @objc func setTitleColor(_ color: XCThemeColor?, for state: UIControl.State) {
        base?.setTitleColor(color, for: state)
    }

    @objc func titleColor(for state: UIControl.State) -> XCThemeColor? {
        base?.titleColor(for: state)
    }
    
    @objc func setTitleShadowColor(_ color: XCThemeColor?, for state: UIControl.State) {
        base?.setTitleShadowColor(color, for: state)
    }
    
    @objc func titleShadowColor(for state: UIControl.State) -> XCThemeColor? {
        base?.titleShadowColor(for: state)
    }
    
    @objc func setImage(_ image: XCThemeImage?, for state: UIControl.State) {
        base?.setImage(image, for: state)
    }
    
    @objc func image(for state: UIControl.State) -> XCThemeImage? {
        base?.image(for: state)
    }
    
    @objc func setBackgroundImage(_ image: XCThemeImage?, for state: UIControl.State) {
        base?.setBackgroundImage(image, for: state)
    }
    
    @objc func backgroundImage(for state: UIControl.State) -> XCThemeImage? {
        base?.backgroundImage(for: state)
    }
}

//
//  UITextView+Theme.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/1/29.
//

import Foundation
import UIKit

public extension XCTheme where Base: UITextView {
    var textColor: XCThemeColor? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.textColor = newValue?.current
            }
        }
    }
}

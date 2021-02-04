//
//  UIPageControl+Theme.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/2.
//

import Foundation
import UIKit

public extension XCTheme where Base: UIPageControl {
    var pageIndicatorTintColor: XCThemeColor? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.pageIndicatorTintColor = newValue?.current
            }
        }
    }
    
    var currentPageIndicatorTintColor: XCThemeColor? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.currentPageIndicatorTintColor = newValue?.current
            }
        }
    }
    
    @available(iOS 14.0, *)
    var preferredIndicatorImage: XCThemeImage? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.preferredIndicatorImage = newValue?.current
            }
        }
    }
    
    @available(iOS 14.0, *)
    func indicatorImage(forPage page: Int) -> XCThemeImage? {
        getProperty(with: "indicatorImageforPage:\(page)")
    }
    
    @available(iOS 14.0, *)
    func setIndicatorImage(_ image: XCThemeImage?, forPage page: Int) {
        setProperty(key: "indicatorImageforPage:\(page)", original: image) { [weak base = _base] in
            base?.setIndicatorImage(image?.current, forPage: page)
        }
    }
}

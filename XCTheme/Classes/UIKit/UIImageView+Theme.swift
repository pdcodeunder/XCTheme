//
//  UIImageView+Theme.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/1/29.
//

import Foundation
import UIKit

public extension XCTheme where Base: UIImageView {
    var image: XCThemeImage? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.image = newValue?.current
            }
        }
    }
    
    var highlightedImage: XCThemeImage? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                base?.highlightedImage = newValue?.current
            }
        }
    }
    
    var animationImages: [XCThemeImage]? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                var imgs: [UIImage] = []
                newValue?.forEach({ (img) in
                    if let im = img.current {
                        imgs.append(im)
                    }
                })
                base?.animationImages = imgs
            }
        }
    }
    
    var highlightedAnimationImages: [XCThemeImage]? {
        get {
            getProperty(with: #function)
        }
        set {
            setProperty(key: #function, original: newValue) { [weak base = _base] in
                var imgs: [UIImage] = []
                newValue?.forEach({ (img) in
                    if let im = img.current {
                        imgs.append(im)
                    }
                })
                base?.highlightedAnimationImages = imgs
            }
        }
    }
}

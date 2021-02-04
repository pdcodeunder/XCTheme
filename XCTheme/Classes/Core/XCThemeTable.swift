//
//  XCThemeTable.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/1/27.
//

import Foundation
import UIKit

/// 主题image类
open class XCThemeImage: NSObject {
    @objc var current: UIImage? {
        let source = XCThemeTable.shared.getImagePath(with: name)
        if let ide = ide, source == ide, let img = image {
            return img
        }
        ide = source
        if source.type == .bundle {
            image = UIImage(named: source.path)
        } else {
            image = UIImage(contentsOfFile: source.path)
        }
        return image
    }
    
    private var image: UIImage?
    private var ide: (type: XCThemeSourceType, path: String)?
    
    @objc let name: String
    
    fileprivate init(named: String) {
        self.name = named
        super.init()
    }
    
    deinit {
        XCThemeTable.shared.removeImage(name)
    }
}

extension XCThemeTable {
    func getImage(with name: String) -> XCThemeImage {
        if let img = imageMap[name]?.image {
            return img
        }
        let img = XCThemeImage(named: name)
        setImage(ImageDealloc(image: img), for: name)
        return img
    }
    
    private var imageMap: [String: ImageDealloc] {
        lock.lock(); defer { lock.unlock() }
        return _imageMap
    }
    private func setImage(_ img: ImageDealloc, for name: String) {
        lock.lock(); defer { lock.unlock() }
        _imageMap[name] = img
    }
    fileprivate func removeImage(_ name: String) {
        lock.lock(); defer { lock.unlock() }
        _imageMap.removeValue(forKey: name)
    }
    
    fileprivate func getImagePath(with name: String) -> (type: XCThemeSourceType, path: String) {
        let str: String
        if let s = configMap[name] as? String {
            str = s
        } else {
            str = name
            printWarning(info: "主题系统找不到 ’\(name)‘ 对应图片")
        }
        return (sourceType, sourcePath + str)
    }
    
    private class ImageDealloc {
        weak var image: XCThemeImage?
        
        init(image: XCThemeImage) {
            self.image = image
        }
    }
}

/// 主题颜色类
open class XCThemeColor: NSObject {
    @objc var current: UIColor? {
        if let _ = _current {
            return _current
        }
        let col = UIColor(red: content.red, green: content.green, blue: content.blue, alpha: content.alpha)
        _current = col
        return col
    }
    @objc let name: String
    private var content: Content
    /// 内部使用，请用factoryColor 工厂方法生成
    fileprivate init(named: String) {
        self.name = named
        let str = XCThemeTable.shared.getColorContent(with: name)
        content = Content(hex: str)
        super.init()
    }
    
    private var _current: UIColor?
    
    fileprivate func switchColor() {
        let str = XCThemeTable.shared.getColorContent(with: name)
        content = Content(hex: str)
        _current = nil
    }
}

extension XCThemeColor {
    private struct Content {
        let red: CGFloat
        let green: CGFloat
        let blue: CGFloat
        let alpha: CGFloat
        
        init(hex: String) {
            let str = hex.replacingOccurrences(of: "#", with: "")
            if str.count > 0, let rgbValue = UInt(str, radix: 16) {
                if str.count > 6 {
                    alpha = CGFloat((rgbValue >> 24) & 0xff) / 255
                    red   = CGFloat((rgbValue >> 16) & 0xff) / 255
                    green = CGFloat((rgbValue >>  8) & 0xff) / 255
                    blue  = CGFloat((rgbValue      ) & 0xff) / 255
                } else {
                    alpha = 1.0
                    red   = CGFloat((rgbValue >> 16) & 0xff) / 255
                    green = CGFloat((rgbValue >>  8) & 0xff) / 255
                    blue  = CGFloat((rgbValue      ) & 0xff) / 255
                }
            } else {
                alpha = 1.0
                red   = 0
                green = 0
                blue  = 0
            }
        }
    }
}

extension XCThemeTable {
    private var colorMap: [String: XCThemeColor] {
        lock.lock(); defer { lock.unlock() }
        return _colorMap
    }
    private func setColor(_ c: XCThemeColor, for name: String) {
        lock.lock(); defer { lock.unlock() }
        _colorMap[name] = c
    }
    
    func getColor(with name: String) -> XCThemeColor {
        if let cl = colorMap[name] {
            return cl
        }
        let cl = XCThemeColor(named: name)
        setColor(cl, for: name)
        return cl
    }
    
    fileprivate func getColorContent(with name: String) -> String {
        let str: String
        if let s = configMap[name] as? String {
            str = s
        } else {
            str = ""
            printWarning(info: "主题系统找不到 ’\(name)‘ 对应颜色")
        }
        return str
    }
}

/// 主题存储表类
class XCThemeTable {
    static let shared = XCThemeTable()
    private let lock = NSLock()
    private var sourcePath: String = ""
    var sourceType: XCThemeSourceType = .bundle
    /// color 存储
    private var _colorMap: [String: XCThemeColor] = [:]
    
    /// image 存储
    private var _imageMap: [String: ImageDealloc] = [:]
    
    /// 当前主题配置
    private var _configMap: [String: Any] = [:]
    private var defaultMap: [String: Any] = [:]
    private var configMap: [String: Any] {
        get {
            lock.lock(); defer { lock.unlock() }
            return _configMap
        }
        set {
            lock.lock(); defer { lock.unlock() }
            _configMap = newValue
        }
    }
    
    func defaultConfig(dic: [String: Any], sourceType: XCThemeSourceType = .bundle, sourcePath: String = "") {
        configMap = dic
        defaultMap = dic
        changeConfig(sourceType: sourceType, sourcePath: sourcePath)
    }
    
    func switchConfig(dic: [String: Any], sourceType: XCThemeSourceType = .bundle, sourcePath: String = "") {
        configMap = defaultMap.merging(dic) { $1 }
        changeConfig(sourceType: sourceType, sourcePath: sourcePath)
    }
    
    private func changeConfig(sourceType: XCThemeSourceType, sourcePath: String) {
        self.sourceType = sourceType
        self.sourcePath = sourcePath
        let map = colorMap
        map.forEach { (_, color) in
            color.switchColor()
        }
        NotificationCenter.default.post(name: XCThemeManager.switchNotification, object: nil)
    }
}

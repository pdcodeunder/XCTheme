//
//  XCThemeManager.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/1/27.
//

import Foundation

/// 资源所在位置
@objc public enum XCThemeSourceType: Int {
    case bundle
    case sandbox
}
/// color 生成方法
public extension XCThemeColor {
    @objc static func name(_ name: String) -> XCThemeColor {
        XCThemeTable.shared.getColor(with: name)
    }
}

/// image 生成方法
public extension XCThemeImage {
    @objc static func name(_ name: String) -> XCThemeImage {
        XCThemeTable.shared.getImage(with: name)
    }
}

open class XCThemeManager: NSObject {
    
    /// 主题切换通知
    @objc public static let switchNotification = NSNotification.Name("XCTheme.switchNotification")
    
    @objc public static func defaultTheme(dic: [String: Any]) {
        XCThemeTable.shared.defaultConfig(dic: dic)
    }
    
    @objc public static func switchConfig(dic: [String: Any], sourceType: XCThemeSourceType = .bundle, sourcePath: String = "") {
        XCThemeTable.shared.switchConfig(dic: dic)
    }
}



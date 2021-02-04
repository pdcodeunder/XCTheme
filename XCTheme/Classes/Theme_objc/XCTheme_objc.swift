//
//  XCTheme_objc.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/2/2.
//

import Foundation

open class XCThemeObjc: NSObject {
    let _base: NSObject
    @objc init(base: NSObject) {
        _base = base
        super.init()
    }
}

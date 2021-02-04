//
//  XCThemeOperation.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/1/27.
//

import Foundation

struct XCThemeOperation {
    private let closure: () -> Void
    let original: Any?
    
    init(original: Any?, block: @escaping () -> Void) {
        closure = block
        self.original = original
    }
    
    func run() {
        closure()
    }
}


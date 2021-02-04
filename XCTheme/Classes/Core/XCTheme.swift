//
//  XCTheme.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/1/27.
//

import Foundation

func printWarning(info: String) {
    #if DEBUG
    print("===========  warning!!!!:  \(info)  ============")
    #endif
}

fileprivate class XCThemeMediator {
    fileprivate struct _ThemeAssociatedKeys {
        static var kThemeObjectKey: UInt8 = 0
    }
    
    static func mediator(_ base: NSObjectProtocol) -> XCThemeMediator {
        if let th = objc_getAssociatedObject(base, &_ThemeAssociatedKeys.kThemeObjectKey) as? XCThemeMediator {
            return th
        }
        let th = XCThemeMediator()
        objc_setAssociatedObject(base, &_ThemeAssociatedKeys.kThemeObjectKey, th, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        return th
    }
    
    private var operations: [String: XCThemeOperation] = [:]
    
    init() {
        NotificationCenter.default.addObserver(self, selector: #selector(refreshTheme), name: XCThemeManager.switchNotification, object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    func setProperty(key: String, original: Any?, closure: @escaping () -> Void) {
        let op = XCThemeOperation(original: original, block: closure)
        op.run()
        operations[key] = op
    }
    
    func getProperty<Type>(with key: String) -> Type? {
        operations[key]?.original as? Type
    }
    
    @objc func refreshTheme() {
        let ops = operations
        ops.forEach { (_, op) in
            op.run()
        }
    }
}

public struct XCTheme<Base: NSObjectProtocol> {
    let _base: Base
    init(base: Base) {
        _base = base
    }
    
    private var mediator: XCThemeMediator {
        XCThemeMediator.mediator(_base)
    }
    
    func setProperty(key: String, original: Any?, closure: @escaping () -> Void) {
        mediator.setProperty(key: key, original: original, closure: closure)
    }
    
    func getProperty<Type>(with key: String) -> Type? {
        mediator.getProperty(with: key)
    }
}

public protocol XCThemeProtocol: NSObjectProtocol {
    associatedtype Base: NSObjectProtocol
    var theme: XCTheme<Base> { get set }
}

public extension XCThemeProtocol {
    var theme: XCTheme<Self> {
        get {
            XCTheme(base: self)
        }
        set { }
    }
}

extension NSObject: XCThemeProtocol {
    
    
}


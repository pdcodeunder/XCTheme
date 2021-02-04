//
//  XCThemeConfig.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/1/27.
//

import Foundation
import XCTheme

extension XCThemeColor {
    @objc static var cffffff: XCThemeColor {
        XCThemeColor.name("cffffff")
    }
    @objc static var cF5F5F7: XCThemeColor {
        XCThemeColor.name("cF5F5F7")
    }
    @objc static var cEFF0F7: XCThemeColor {
        XCThemeColor.name("cEFF0F7")
    }
    @objc static var c121213: XCThemeColor {
        XCThemeColor.name("c121213")
    }
    @objc static var c242529: XCThemeColor {
        XCThemeColor.name("c242529")
    }
    @objc static var c626470: XCThemeColor {
        XCThemeColor.name("c626470")
    }
    @objc static var CW: XCThemeColor {
        XCThemeColor.name("CW")
    }
    @objc static var c149eff: XCThemeColor {
        XCThemeColor.name("c149eff")
    }
    @objc static var c7c7e86: XCThemeColor {
        XCThemeColor.name("c7c7e86")
    }
}

class PPThemeConfig: NSObject {
    @objc static func configDefault() {
        XCThemeManager.defaultTheme(dic: normalConfig)
    }

    @objc static func switchTheme() {
        XCThemeManager.switchConfig(dic: otherConfig)
    }

    static var normalConfig: [String: Any] {
        return [
            "cffffff": "#ffffff",
            "cF5F5F7": "#F5F5F7",
            "cEFF0F7": "#EFF0F7",
            "c121213": "#121213",
            "c242529": "#242529",
            "c626470": "#626470",
            "CW": "#ffffff",
            "c149eff": "#149eff",
            "c7c7e86": "#7c7e86",
            "nav_more": "nav_more",
            "nav_alert": "nav_alert",
            "nav_back": "nav_back",
            "zoom_guide": "moment_zone_start_guide",
            "alert_top": "xc_media_alert_top_1",
            "apple": "zy_ic_login_otherway_apple",
            "qq": "zy_ic_login_otherway_qq",
            "wechat": "zy_ic_login_otherway_wechat",
            "photo": "zyphotopicker_apple_icon"
        ]
    }

    static var otherConfig: [String: Any] {
        return [
            "cffffff": "#252634",
            "cF5F5F7": "#303243",
            "cEFF0F7": "#1f1f2a",
            "c121213": "#afb9cf",
            "c242529": "#afb9cf",
            "c626470": "#8c9ab4",
            "CW": "#33ffffff",
            "c149eff": "#0e76bf",
            "c7c7e86": "#8c9ab4",
            "nav_more": "nav_more_n",
            "nav_alert": "nav_alert_n",
            "nav_back": "nav_back_n",
            "zoom_guide": "moment_zone_start_guide_night",
            "alert_top": "xc_media_alert_top_1_dark",
            "apple": "zy_ic_login_otherway_apple_n",
            "qq": "zy_ic_login_otherway_qq_n",
            "wechat": "zy_ic_login_otherway_wechat_n",
            "photo": "zyphotopicker_apple_icon_night"
        ]
    }
}




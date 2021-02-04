//
//  TestViewController.swift
//  XCTheme
//
//  Created by 彭懂 on 2021/1/27.
//

import Foundation
import UIKit
import XCTheme

class TestViewController: UIViewController {
    @objc var ismodel = false

    override func viewDidLoad() {
        super.viewDidLoad()
        themeUI()
    }

    func themeUI() {
        view.theme.backgroundColor = .cffffff
        navigationController?.navigationBar.theme.backgroundColor = .cffffff

        let back = UIBarButtonItem(image: nil, style: .plain, target: self, action: #selector(backAction))
        back.theme.image = .name("nav_back")
        self.navigationItem.leftBarButtonItem = back

        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 44))
        titleLabel.textAlignment = .center
        titleLabel.text = "皮肤"
        titleLabel.theme.textColor = .c121213
        self.navigationItem.titleView = titleLabel

        let width = UIScreen.main.bounds.width
        let topImage = UIImageView(frame: CGRect(x: (width - 212) / 2.0 , y: 100, width: 212, height: 151))
        topImage.theme.image = .name("alert_top")
        view.addSubview(topImage)

        let normal = UIButton(type: .custom)
        normal.frame = CGRect(x: 30, y: 270, width: 100, height: 50)
        normal.theme.backgroundColor = .c149eff
        normal.theme.setTitleColor(.cffffff, for: .normal)
        normal.setTitle("正常模式", for: .normal)
        normal.addTarget(self, action: #selector(normalClicked), for: .touchUpInside)
        view.addSubview(normal)

        let night = UIButton(type: .custom)
        night.frame = CGRect(x: width - 100 - 30, y: 270, width: 100, height: 50)
        night.theme.backgroundColor = .c149eff
        night.theme.setTitleColor(.cffffff, for: .normal)
        night.setTitle("黑夜模式", for: .normal)
        night.addTarget(self, action: #selector(nightClicked), for: .touchUpInside)
        view.addSubview(night)
    }

    func systemUI() {
        view.backgroundColor = UIColor(named: "cwhite")
        navigationController?.navigationBar.backgroundColor = .white

        let back = UIBarButtonItem(image: UIImage(named: "nav_back"), style: .plain, target: self, action: #selector(backAction))
        self.navigationItem.leftBarButtonItem = back

        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 44))
        titleLabel.textAlignment = .center
        titleLabel.text = "皮肤"
        titleLabel.textColor = .white
        self.navigationItem.titleView = titleLabel

        let width = UIScreen.main.bounds.width
        let topImage = UIImageView(frame: CGRect(x: (width - 212) / 2.0 , y: 100, width: 212, height: 151))
        topImage.image = UIImage(named: "xc_media_alert_top_1")
        view.addSubview(topImage)

        let normal = UIButton(type: .custom)
        normal.frame = CGRect(x: 30, y: 270, width: 100, height: 50)
        normal.backgroundColor = .blue
        normal.setTitleColor(.white, for: .normal)
        normal.setTitle("正常模式", for: .normal)
        normal.addTarget(self, action: #selector(normalClicked), for: .touchUpInside)
        view.addSubview(normal)

        let night = UIButton(type: .custom)
        night.frame = CGRect(x: width - 100 - 30, y: 270, width: 100, height: 50)
        night.backgroundColor = .blue
        night.setTitleColor(.white, for: .normal)
        night.setTitle("黑夜模式", for: .normal)
        night.addTarget(self, action: #selector(nightClicked), for: .touchUpInside)
        view.addSubview(night)
    }

    @objc private func backAction() {
        if ismodel {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }

    @objc private func normalClicked() {
        PPThemeConfig.configDefault()
    }

    @objc private func nightClicked() {
        PPThemeConfig.switchTheme()
    }
}


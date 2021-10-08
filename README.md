# XCTheme

[![CI Status](https://img.shields.io/travis/pdcodeunder/XCTheme.svg?style=flat)](https://travis-ci.org/pdcodeunder/XCTheme)
[![Version](https://img.shields.io/cocoapods/v/XCTheme.svg?style=flat)](https://cocoapods.org/pods/XCTheme)
[![License](https://img.shields.io/cocoapods/l/XCTheme.svg?style=flat)](https://cocoapods.org/pods/XCTheme)
[![Platform](https://img.shields.io/cocoapods/p/XCTheme.svg?style=flat)](https://cocoapods.org/pods/XCTheme)

## 说明

一个支持oc和swift混编的主题切换库

## 插入

```ruby
pod 'XCTheme'
```

## 使用

swift:
````swift
view.theme.backgroundColor = .cffffff
navigationController?.navigationBar.theme.backgroundColor = .cffffff

let back = UIBarButtonItem(image: nil, style: .plain, target: self, action: #selector(backAction))
back.theme.image = .name("nav_back")

let normal = UIButton(type: .custom)
normal.theme.backgroundColor = .c149eff
normal.theme.setTitleColor(.cffffff, for: .normal)

````

oc:
````objc
self.view.theme_oc.backgroundColor = XCThemeColor.cffffff;
[self.navigationController.navigationBar.theme_oc setBackgroundColor:XCThemeColor.cffffff];

UIBarButtonItem *right1 = [[UIBarButtonItem alloc] initWithImage:nil style:UIBarButtonItemStylePlain target:self action:@selector(navMoreClicked)];
[right1.theme_oc setImage:[XCThemeImage name:@"nav_more"]];

UIBarButtonItem *right2 = [[UIBarButtonItem alloc] initWithImage:nil style:UIBarButtonItemStylePlain target:self action:@selector(navNotiClicked)];
[right2.theme_oc setImage:[XCThemeImage name:@"nav_alert"]];

UIButton *qq = [UIButton buttonWithType:UIButtonTypeCustom];
[qq.theme_oc setImage:[XCThemeImage name:@"qq"] for:UIControlStateNormal];
````

## 作者

pdcodeunder, pd767180024@163.com

## 其他

如果喜欢，给个 星星 ⭐️ 鼓励一下呗
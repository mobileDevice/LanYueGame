//
//  ViewController.swift
//  lanyue
//
//  Created by user on 2017/10/20.
//  Copyright © 2017年 user. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate {
    var targetUrl = "http://106.75.29.38:8183/youxitest.php"
    
    @IBOutlet weak var gameView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1.设置访问资源 - 百度搜索
        let url = URL(string: targetUrl);
        
        // 2.建立网络请求
        let request = URLRequest(url: url!);
        
        // 3.加载网络请求
        gameView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
}


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

    @IBOutlet weak var gameView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(self.webView)
        view.addSubview(self.progressView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // webView
    lazy var webView : WKWebView = {
        /// 设置访问的URL
        let url = NSURL(string: "http://106.75.29.38:8183/youxitest.php")
        /// 根据URL创建请求
        let requst = NSURLRequest(url: url! as URL)
        /// 设置代理
        //        web.uiDelegate = self
        gameView.navigationDelegate = self
        /// WKWebView加载请求
        gameView.load(requst as URLRequest)
        
        return gameView
    }()
    
    
    // 进度条
    lazy var progressView:UIProgressView = {
        let progress = UIProgressView()
        progress.progressTintColor = UIColor.red
        progress.trackTintColor = .clear
        return progress
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.progressView.frame = CGRect(x:0,y:64,width:self.view.frame.size.width,height:2)
        self.progressView.isHidden = false
        UIView.animate(withDuration: 1.0) {
            self.progressView.progress = 0.0
        }
    }
    
}


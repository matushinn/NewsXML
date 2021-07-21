//
//  WebViewController.swift
//  SmartNews
//
//  Created by 大江祥太郎 on 2021/07/21.
//

import UIKit
import WebKit

class WebViewController: UIViewController,WKUIDelegate{

    var webView = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        webView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height - 50)
        
        view.addSubview(webView)
        
        let urlString = UserDefaults.standard.object(forKey: "url")
        let url = URL(string: urlString as! String)
        
        let request = URLRequest(url: url!)
        webView.load(request)
        
        
        
    }
    

    

}

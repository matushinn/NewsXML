//
//  IntroViewController.swift
//  SmartNews
//
//  Created by 大江祥太郎 on 2021/07/20.
//

import UIKit
import Lottie

class IntroViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    var onboardArray = ["1","2","3","4","5"]
    
    var onboardStringArray = ["私たちは繋がっている","みんな違ってみんな悪い","なにクソ根性を忘れるな","なんやそれ","もう無理ゲーですね"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ページングができるようになる。
        scrollView.isPagingEnabled = true
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //navigationbarを隠す
        self.navigationController?.isNavigationBarHidden = true
    }
    
    func setUpScroll(){
        
    }

    

}

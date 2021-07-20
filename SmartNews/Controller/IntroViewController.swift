//
//  IntroViewController.swift
//  SmartNews
//
//  Created by 大江祥太郎 on 2021/07/20.
//

import UIKit
import Lottie

class IntroViewController: UIViewController ,UIScrollViewDelegate{

    @IBOutlet weak var scrollView: UIScrollView!
    
    var onboardArray = ["1","2","3","4","5"]
    
    var onboardStringArray = ["私たちは繋がっている","みんな違ってみんな悪い","なにクソ根性を忘れるな","なんやそれ","もう無理ゲーですね"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ページングができるようになる。
        scrollView.isPagingEnabled = true

        setUpScroll()
        
        //最初は0が入るので一番左から、次は1ページ次からのようになっていく。
        for i in 0...4{
            let animationView = AnimationView()
            let animation = Animation.named(onboardArray[i])
            animationView.frame = CGRect(x: CGFloat(i)*view.frame.size.width, y: 0, width: view.frame.size.width, height: view.frame.size.height)
            
            animationView.animation = animation
            animationView.contentMode = .scaleAspectFit
            animationView.loopMode = .loop
            animationView.play()
            scrollView.addSubview(animationView)
            
            
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //navigationbarを隠す
        self.navigationController?.isNavigationBarHidden = true
    }
    
    func setUpScroll(){
        scrollView.delegate = self
        
        scrollView.contentSize = CGSize(width: view.frame.size.width*5, height: scrollView.frame.size.height)
        
        for i in 0...4{
            //最初は0が入るので一番左から、次は1ページ次からのようになっていく。
            let onboardLabel = UILabel(frame: CGRect(x: CGFloat(i)*view.frame.size.width, y: view.frame.height/3, width: scrollView.frame.size.width, height: scrollView.frame.size.height))
            
            onboardLabel.font = UIFont.boldSystemFont(ofSize: 15.0)
            onboardLabel.textAlignment = .center
            onboardLabel.text = onboardStringArray[i]
            scrollView.addSubview(onboardLabel)
            
        }
        
    }

    

}

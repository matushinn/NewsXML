//
//  LoginMovieViewController.swift
//  SmartNews
//
//  Created by 大江祥太郎 on 2021/07/21.
//

import UIKit
import AVFoundation

class LoginMovieViewController: UIViewController {

    var player = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let path = Bundle.main.path(forResource: "start", ofType: "mov")
        player = AVPlayer(url: URL(fileURLWithPath: path!))
        
        //AVPlayer用のレイヤーを生成
        let playerLayer = AVPlayerLayer(player: player)
        
        playerLayer.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        
        playerLayer.videoGravity = .resizeAspectFill
        
        //無限ループが可能になる
        playerLayer.repeatCount = 0
        
        //ログインボタンを上に持ってきたいから
        playerLayer.zPosition = -1
        
        view.layer.insertSublayer(playerLayer, at: 0)
        
        //動画が一番最後までいったら最初下に戻してくれる
        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: player.currentItem, queue: .main) { (_) in
            //playerの開始状態を求める
            self.player.seek(to: .zero)
            self.player.play()
        }
        
        self.player.play()
            
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }

    @IBAction func login(_ sender: Any) {
        player.pause()
    }
    

}

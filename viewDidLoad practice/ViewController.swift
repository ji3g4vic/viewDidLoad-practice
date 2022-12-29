//
//  ViewController.swift
//  viewDidLoad practice
//
//  Created by 王衍智 on 2022/12/18.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
       //加入文字跑馬燈（CATransition&Timer）
        @IBOutlet weak var label: UILabel!
       var index = 0
       let songs = [
        "                       ",
        "                       ",
        "                       ",
        "偶爾撒嬌 加點耍賴 要你關心她",
        "熬夜不睡 即使疲倦 電話不肯掛",
        "喜歡你陪伴塗鴉 再聽她說說傻話",
        "              ",
        "輕輕的親吻臉頰 不厭其煩說愛她",
        "偶爾霸道 因為不安 怕你不要她",
        "假裝好強 其實委屈 眼淚等你擦",
        "不快樂她自己藏 就算被笑是傻瓜",
        "           ",
        "只想甜的像顆糖 在你胸口慢慢的",
        "融化",
        "她或許不完美 任性的小缺點",
        "安靜的嘟著嘴 就是想你多陪一會",
        " ",
        "她不要求完美 一杯開水也能醉",
        "給的愛不准浪費 勾勾手不後悔",
        " ",
        " ",
        " ",
        " ",
        "偶爾霸道 因為不安 怕你不要她",
        "假裝好強 其實委屈 眼淚等你擦",
        "不快樂她自己藏 就算被笑是傻瓜",
        " ",
        "只想甜的像顆糖 在你胸口慢慢的",
        "融化",
        "她或許不完美 任性的小缺點",
        "安靜的嘟著嘴 就是想你多陪一會",
        "她不要求完美 一杯開水也能醉",
        " ",
        "給的愛不准浪費 勾勾手不後悔",
        "她或許不完美 任性的小缺點",
        "安靜的嘟著嘴 就是想你多陪一會",
        " ",
        "她不要求完美 一杯開水也能醉",
        "給的愛不准浪費 勾勾手不後悔",
        " ",
        "給的愛不准浪費 勾勾手不後悔"
       ]
    var timer : Timer?
    //定義nextSong跟移動效果
    func nextSong(){
        index = (index + 1) % songs.count
        let transition = CATransition()
        transition.duration = 3
        transition.type = .push
        transition.subtype = .fromTop
        label.text = songs[index]
        label.layer.add(transition, forKey: "nextSong")
    }
    let player = AVPlayer() //生成播放器

        override func viewDidLoad() {
        super.viewDidLoad()
            
            
        //加入音樂
            let url = Bundle.main.url(forResource: "游喧 勾勾手 mv 完整版", withExtension: "mp3")!
            let playerItem = AVPlayerItem(url: url)
            player.replaceCurrentItem(with: playerItem)
            player.play()

        //加入雲動畫
        let cloudView = UIImageView(frame: CGRect(x: 0, y: 0, width: 400, height: 240))
            cloudView.frame = view.bounds
            view.addSubview(cloudView)
        let animatedImage = UIImage.animatedImageNamed("aa4cba8bdcbd4fb7aa6182122b64b8e7KShMDPadio3bCXLQ-", duration: 10)
            cloudView.image = animatedImage
        //加入背景照片
        let shadowView = UIImageView(image: UIImage(named: "shadow"))
            shadowView.frame = CGRect(x: 2, y: 458, width: 380 , height: 500)
            view.addSubview(shadowView)
        //加入愛心線條動畫
        let path = UIBezierPath()
            path.move(to: CGPoint(x: 0, y: 435))
            path.addLine(to: CGPoint(x: 7, y: 438))
            path.addLine(to: CGPoint(x: 18, y: 442))
            path.addLine(to: CGPoint(x: 30, y: 444))
            path.addLine(to: CGPoint(x: 42, y: 445))
            path.addLine(to: CGPoint(x: 53, y: 445))
            path.addLine(to: CGPoint(x: 65, y: 445))
            path.addLine(to: CGPoint(x: 70, y: 446))
            path.addLine(to: CGPoint(x: 76, y: 447))
            path.addLine(to: CGPoint(x: 80, y: 443))
            path.addLine(to: CGPoint(x: 88, y: 439))
            path.addLine(to: CGPoint(x: 100, y: 436))
            path.addLine(to: CGPoint(x: 106, y: 433))
            path.addLine(to: CGPoint(x: 112, y: 430))
            path.addLine(to: CGPoint(x: 115, y: 425))
            path.addLine(to: CGPoint(x: 123, y: 423))
            path.addLine(to: CGPoint(x: 131, y: 416))
            path.addLine(to: CGPoint(x: 146, y: 407))
            path.addLine(to: CGPoint(x: 145, y: 397))
            path.addLine(to: CGPoint(x: 147, y: 386))
            path.addLine(to: CGPoint(x: 135, y: 378))
            path.addLine(to: CGPoint(x: 125, y: 375))
            path.addLine(to: CGPoint(x: 113, y: 378))
            path.addLine(to: CGPoint(x: 107, y: 384))
            path.addLine(to: CGPoint(x: 101, y: 379))
            path.addLine(to: CGPoint(x: 95, y: 375))
            path.addLine(to: CGPoint(x: 89, y: 371))
            path.addLine(to: CGPoint(x: 79, y: 373))
            path.addLine(to: CGPoint(x: 69, y: 380))
            path.addLine(to: CGPoint(x: 65, y: 390))
            path.addLine(to: CGPoint(x: 68, y: 400))
            path.addLine(to: CGPoint(x: 73, y: 408))
            path.addLine(to: CGPoint(x: 77, y: 417))
            path.addLine(to: CGPoint(x: 85, y: 423))
            path.addLine(to: CGPoint(x: 93, y: 430))
            path.addLine(to: CGPoint(x: 100, y: 435))
            path.addLine(to: CGPoint(x: 109, y: 440))
            path.addLine(to: CGPoint(x: 117, y: 443))
            path.addLine(to: CGPoint(x: 127, y: 446))
            path.addLine(to: CGPoint(x: 139, y: 447))
            path.addLine(to: CGPoint(x: 150, y: 450))
            path.addLine(to: CGPoint(x: 159, y: 447))
            path.addLine(to: CGPoint(x: 168, y: 447))
            path.addLine(to: CGPoint(x: 178, y: 446))
            path.addLine(to: CGPoint(x: 196, y: 442))
            path.addLine(to: CGPoint(x: 206, y: 440))
            path.addLine(to: CGPoint(x: 213, y: 437))
            path.addLine(to: CGPoint(x: 222, y: 436))
            path.addLine(to: CGPoint(x: 230, y: 435))
            path.addLine(to: CGPoint(x: 242, y: 434))
            path.addLine(to: CGPoint(x: 253, y: 434))
            path.addLine(to: CGPoint(x: 264, y: 435))
            path.addLine(to: CGPoint(x: 274, y: 437))
            path.addLine(to: CGPoint(x: 284, y: 439))
            path.addLine(to: CGPoint(x: 294, y: 445))
            path.addLine(to: CGPoint(x: 300, y: 443))
            path.addLine(to: CGPoint(x: 320, y: 440))
            path.addLine(to: CGPoint(x: 400, y: 444))
        let loveLayer = CAShapeLayer()
            loveLayer.path = path.cgPath
            loveLayer.lineWidth = 3
            loveLayer.strokeColor = CGColor(red: 38/255, green: 128/255, blue: 157/255, alpha: 1)
            loveLayer.fillColor = nil
            view.layer.addSublayer(loveLayer)
        let animation = CABasicAnimation(keyPath: "strokeEnd")
            animation.fromValue = 0
            animation.toValue = 1
            animation.duration = 13
            loveLayer.add(animation, forKey: nil)
        
            //加入跑馬燈文字

                label.text = songs[index]
                timer = Timer.scheduledTimer(withTimeInterval: 5,  repeats: true) { _ in self.nextSong()}
                view.addSubview(label)
            //加入歌名text
            let lable1 = UILabel(frame: CGRect(x: 245, y: 385, width: 132, height: 40))
            lable1.text = "勾勾手"
            lable1.textColor = UIColor(cgColor: CGColor(red: 0, green: 113/255, blue: 169/225, alpha: 1))
            lable1.font = UIFont.systemFont(ofSize: 30)
            view.addSubview(lable1)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        timer?.invalidate()
    }
}


//
//  GameViewController.swift
//  barabara
//
//  Created by 田嶋智洋 on 2018/04/07.
//  Copyright © 2018年 田嶋智洋. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageVIew2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    var timer: Timer!
    var score: Int = 1000
    let defaults:UserDefaults = UserDefaults.standard
    let width:  CGFont = UIScreen.main.bounds.size.width as! CGFont
    var positionX: [CGFont] = [0.0 as! CGFont,0.0 as! CGFont,0.0 as! CGFont]
    var dx: [CGFont] = [1.0 as! CGFont,0.5 as! CGFont,-1.0 as! CGFont]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        positionX = [width/2,width/2,width/2]
        self.start()
        

        // Do any additional setup after loading the view.
    }
    
    @objc func up(){
        for i in 0..<3 {
            if positionX[i] > width || positionXpositionX[i] < 0 {
                dx[i] = dx[i] * -1
            }
            positionX[i] += dx[i]
        }
        imageView1.center.x = positionX[0] as! CGFloat
        imageVIew2.center.x = positionX[1] as! CGFloat
    }
    func start(){
        resultLabel.isHidden = true
        timer = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector(self.up),userInfo: nil, repeats: true)
        timer.fire()
    }
    
    @IBAction func stop(_ sender: Any) {
        if timer.isValid == true {
            timer.invalidate()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

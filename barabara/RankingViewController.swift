//
//  RankingViewController.swift
//  barabara
//
//  Created by 田嶋智洋 on 2018/04/07.
//  Copyright © 2018年 田嶋智洋. All rights reserved.
//

import UIKit

class RankingViewController: UIViewController {
    
    
    @IBOutlet weak var rankingLabel1: UILabel!
    @IBOutlet weak var rankingLabel2: UILabel!
    @IBOutlet weak var rankingLabel3: UILabel!
    
    let defaults: UserDefaults = UserDefaults.standard
    

    override func viewDidLoad() {
        super.viewDidLoad()
        rankingLabel1.text = String(defaults.integer(forKey: "score1"))
        rankingLabel2.text = String(defaults.integer(forKey: "score2"))
        rankingLabel3.text = String(defaults.integer(forKey: "score3"))

        // Do any additional setup after loading the view.
    }

    @IBAction func goTop(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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

//
//  ViewController2.swift
//  Name that Celebrity!
//
//  Created by Siddharth Rajan on 6/17/17.
//  Copyright © 2017 CodeOfSid. All rights reserved.
//

import UIKit


class ViewController2: UIViewController {
    
    @IBOutlet weak var finalScoreLabel: UILabel!
    
    @IBOutlet weak var commentsLabel: UILabel!
    
    var the_score = String()
    
    var the_comment = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        finalScoreLabel.text = the_score

        commentsLabel.text = the_comment
        
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

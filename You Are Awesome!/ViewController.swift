//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by MYZ on 9/1/19.
//  Copyright © 2019 Yinzhe Ma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    var index=0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        let messages=["You Are Fantastic!!",
                      "You Are Great!!",
                      "You Are Amazing!!",
                      "When the Genius Bar needs help, they call you!",
                      "You've got the design skills of Jony Ive",
                      "You Are Da Bomb",
                      "You Are Tremendous",
                      "You Brighten my day!!",
                      "Hey, fabulous"]
        let colors=[UIColor.blue,
                    UIColor.black,
                    UIColor.red,
                    UIColor.brown,
                    UIColor.darkGray,
                    UIColor.green,
                    UIColor.orange,
                    UIColor.purple,
                    UIColor.yellow]
        let index=Int.random(in: 0...messages.count-1)
        messageLabel.text=messages[index]
        messageLabel.textColor=colors[index]
    }
    
}


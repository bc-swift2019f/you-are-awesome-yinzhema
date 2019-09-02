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
    
    
    // code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
         messageLabel.text="You Are Awesome!"
    }
    
}


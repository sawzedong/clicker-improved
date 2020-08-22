//
//  ViewController.swift
//  clicker-improved
//
//  Created by Shaw Sheng Saw on 22/8/20.
//  Copyright © 2020 NIL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet var screenTGR: UITapGestureRecognizer!
    
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.text = "\(counter)"
    }

    @IBAction func screenTapped(_ sender: Any) {
        counter += 1
        countLabel.text = "\(counter)"
        
        if counter >= 30 {
            print("Done")
            screenTGR.isEnabled = false
        }
    }
    
}


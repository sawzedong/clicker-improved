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
    var time = 0.0
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.text = "\(counter)"
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
            self.time += 0.1
        }
    }
    
    @objc func update() {
      time += 0.1
    }

    @IBAction func screenTapped(_ sender: Any) {
        counter += 1
        countLabel.text = "\(counter)"
        
        if counter >= 30 {
            print("Maximum reached in \(time) seconds.")
            print("Done")
            screenTGR.isEnabled = false
        }
    }
    
}


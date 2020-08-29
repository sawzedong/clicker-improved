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
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet var screenTGR: UITapGestureRecognizer!
    
    var counter = 0
    var time = 0.00
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.text = "\(counter)"
        timeLabel.text = "\(time)"
        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { _ in
            self.time += 0.01
            let displayTime = round(self.time*100)/100
            self.timeLabel.text = "\(displayTime)"
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
            performSegue(withIdentifier: "exitClicker", sender: self)
        }
    }
    
}


//
//  ViewController.swift
//  Stop
//
//  Created by D7702_09 on 2018. 4. 9..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var count = 0
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func updateTime() {
        count = count + 1
        let min = count / 60 / 100
        let sec = (count - (min * 60 * 100)) / 100
        let msec = count - (min * 60 * 100) - (sec * 100)
        timeLabel.text = String(format: "%02d:%02d:%02d", min, sec, msec)
    }

    @IBAction func Start(_ sender: Any) {
        myTimer = Timer.scheduledTimer(withTimeInterval: 1/100, repeats: true, block: {(myTimer) in self.updateTime()
        })
    }
    
    @IBAction func stop(_ sender: Any) {
        myTimer.invalidate()
    }
    
    @IBAction func reset(_ sender: Any) {
        count = 0
        timeLabel.text = "00:00:00"

    }
    
    
    
    
    
    
    
    
    
}


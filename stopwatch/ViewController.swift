//
//  ViewController.swift
//  stopwatch
//
//  Created by the Soo-Rae's Mac on 7/4/15.
//  Copyright (c) 2015 sourceapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer=NSTimer()
    var count=0
    @IBOutlet weak var timeCount: UILabel!
    func result(){
        count++
        timeCount.text=String(count)
        
    }
    @IBAction func start(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    
    }
   
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
 
    @IBAction func zero(sender: AnyObject) {
        timer.invalidate()
        count=0
        timeCount.text="0"
    }
    override func viewDidLoad() {
        super.viewDidLoad()

       
}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



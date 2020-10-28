//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    var count = 0
    var timer = Timer()
    var eggTime = 0
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var labelTitle: UILabel!
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        progressBar.progress = 0
        labelTitle.text = "How do you like your eggs?"
        
        eggTime = eggTimes[sender.currentTitle!]!
        count = eggTime;
        
        timer = Timer.scheduledTimer(timeInterval: 1 ,
                target: self,
                selector: #selector(self.countdownTimer),
                userInfo: nil,
                repeats: true)
        

        
        
        //let hardness = sender.currentTitle
        //print(sender.currentTitle)
        /*
        if(hardness == "Soft"){
            print(softTime)
        }else{
            if(hardness == "Medium"){
                print(mediumTime)
            }else{
                if(hardness == "Hard"){
                    print(hardTime)
                }
            }
        }*/
        
    }
    
    @objc func countdownTimer() {
        if(count > 0) {
            print("\(count) seconds")
            let progressValue:Float = Float(((eggTime + 1) - count)) / Float(eggTime)
            progressBar.progress = progressValue
            count -= 1
        }else{
            labelTitle.text = "Done!"
        }
        
    }
    

}

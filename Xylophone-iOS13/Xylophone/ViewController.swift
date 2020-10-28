//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(sound: (sender.titleLabel?.text)!)
        sender.alpha = 0.5
        print("Start")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { // Change `2.0` to the desired number of seconds.
            sender.alpha = 1
            print("End")
        }
        
        /*
        switch sender.titleLabel?.text {
        case "C":
            playSound(sound: "C")
        case "D":
            playSound(sound: "D")
        case "E":
            playSound(sound: "E")
        case "F":
            playSound(sound: "F")
        case "G":
            playSound(sound: "G")
        case "A":
            playSound(sound: "A")
        case "B":
            playSound(sound: "B")
        default:
            print("NO SOUND")
        }*/
    
    }
    
    func playSound(sound: String) {
        let url = Bundle.main.url(forResource: sound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz = [Question(q: "Four + Two is equal to Six", a: "True"),
                Question(q: "Five - Three is greater than One", a: "True"),
                Question(q: "Three + Eight is less than Ten", a: "False")
                ]
    var quizNumber = 0
    var quizSize = 0
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        quizSize = quiz.count
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        timer.invalidate()
        
        if(sender.currentTitle == quiz[quizNumber].answer){
            //print("Right")
            sender.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }else{
            //print("WRONG")
            sender.backgroundColor = #colorLiteral(red: 0.5984714627, green: 0.01643073931, blue: 0.09318052977, alpha: 1)
        }
        
        if(quizNumber < quiz.capacity - 1){
            quizNumber += 1
            
        }else{
            quizNumber = 0
        }
        
        //A selector can't have parameters
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
              
        //updateUI(question: questionText.textQuestion)
        
    }
    
    @objc func updateUI(){
        questionLabel.text = quiz[quizNumber].textQuestion
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
    
}


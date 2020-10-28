//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Miguel Munoz on 23/10/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation
 
struct Question{
    var textQuestion: String
    var answer: String
        
    init(q: String, a: String) {
        self.textQuestion = q
        self.answer = a
    }
}

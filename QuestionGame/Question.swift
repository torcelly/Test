//
//  Question.swift
//  QuestionGame
//
//  Created by Alumno on 4/7/17.
//  Copyright © 2017 psc. All rights reserved.
//

import Foundation

enum QuestionType: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case d = "D"
}

class Question {
    
    var questionText: String = ""
    var questionOptions: [String] = []
    var answerCorrect: QuestionType = .a
    var answerSelectedByUser: QuestionType = .b
    
}

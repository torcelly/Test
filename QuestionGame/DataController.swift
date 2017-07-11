//
//  DataController.swift
//  QuestionGame
//
//  Created by Alumno on 4/7/17.
//  Copyright © 2017 psc. All rights reserved.
//

import Foundation

class DataController {

    static let shareController = DataController()
    private init() {}

    var questions: [Question] = []
    
    func numberOfCorrectAnswer() -> Int {
        var correct = 0
        for question in self.questions {
            if question.answerCorrect == question.answerSelectedByUser {
                correct = correct + 1
            }
        }
        return correct
    }
    
    func numberOfWrongAnswer() -> Int {
        return self.questions.count - self.numberOfCorrectAnswer()
    }
}

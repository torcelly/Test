//
//  QuestionViewController.swift
//  QuestionGame
//
//  Created by Alumno on 4/7/17.
//  Copyright © 2017 psc. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet var textView: UITextView!
    @IBOutlet var labelA: UILabel!
    @IBOutlet var labelB: UILabel!
    @IBOutlet var labelC: UILabel!
    @IBOutlet var labelD: UILabel!
    @IBOutlet var buttonA: UIButton!
    @IBOutlet var buttonB: UIButton!
    @IBOutlet var buttonC: UIButton!
    @IBOutlet var buttonD: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavigationTitle()
        self.showQuestion()
    }
    
    func setupNavigationTitle() {
        if let index = self.navigationController?.viewControllers.index(of: self) {
            self.title = String.init(format: "Question %i", index+1)
        }
    }
    
    func showQuestion() {
        if let index = self.navigationController?.viewControllers.index(of: self) {
            
            if index == DataController.shareController.questions.count {
                self.performSegue(withIdentifier: "resultSegue", sender: nil)
            }
            else {
                let question = DataController.shareController.questions[index]
                
                if question.questionOptions.count == 4{
                    textView.text = question.questionText
                    labelA.text = String.init(format: "A: %@", question.questionOptions[0])
                    labelB.text = String.init(format: "B: %@", question.questionOptions[1])
                    labelC.text = String.init(format: "C: %@", question.questionOptions[2])
                    labelD.text = String.init(format: "D: %@", question.questionOptions[3])
                }
            }
        }
    }

    @IBAction func didAnswerSelected(sender: UIButton) {
        if let index = self.navigationController?.viewControllers.index(of: self) {
            let question = DataController.shareController.questions[index]
            if sender == self.buttonA {
                question.answerSelectedByUser = .a
            }
            else if sender == self.buttonB {
                question.answerSelectedByUser = .b
            }
            else if sender == self.buttonC {
                question.answerSelectedByUser = .c
            }
            else if sender == self.buttonD {
                question.answerSelectedByUser = .d
            }
        }
    }
}


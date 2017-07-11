//
//  ResultViewController.swift
//  QuestionGame
//
//  Created by Alumno on 4/7/17.
//  Copyright © 2017 psc. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var textView: UITextView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.showResults()
    }
    
    
    func showResults() {
        let report = String.init(format: "Ha respondido %i preguntas. De ellas %i fueron correctas y %i fueron incorrectas.", DataController.shareController.questions.count, DataController.shareController.numberOfCorrectAnswer(), DataController.shareController.numberOfWrongAnswer())
        self.textView.text = report
    }
    
    @IBAction func restart() {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}

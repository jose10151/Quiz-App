//
//  ViewController.swift
//  Quiz App
//
//  Created by 4d on 12/1/23.
//

import UIKit

class ViewController: UIViewController {
var index = 0
var score = 0
    
    var Questions:[Quiz] = [Quiz(question: "How much does 800 robux cost?", answer: "10"), Quiz(question: "How much does 10,000 robux cost?", answer: "100"), Quiz(question: "What is the most played game in Roblox?", answer: "Brookhaven"),Quiz(question: "What is the most expensive catalog item in Roblox?", answer: "Dominus Empyreus"), Quiz(question: "What game revloves around buying and trading pets?", answer: "Adopt Me"), Quiz(question: "What year was Roblox made?", answer: "2006"), Quiz(question: "What famous horror game was inspired by Peppa Pig?", answer: "Piggy")]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
                                     
        questionName.text = Questions[0].question
        
    }

    @IBOutlet weak var questionName: UILabel!
    
    @IBOutlet weak var answerTextField: UITextField!
    
    @IBAction func replay(_ sender: Any) {
        
    }
    
    @IBAction func Checkanswer(_ sender: Any) {
      
    }
    @IBAction func next(_ sender: UIButton) {
    }
    
}


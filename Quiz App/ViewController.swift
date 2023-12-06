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
        // Do any additional setup after loading the vie
                                     
        questionName.text = Questions[index].question
        Score.text = "Score: \(score)"
        
    }

    @IBOutlet weak var questionName: UILabel!
    
    @IBOutlet weak var Score: UILabel!
    
    @IBOutlet weak var answerTextField: UITextField!
    
    @IBAction func replay(_ sender: Any) {
        if index == Questions.count - 1{
            index = 0
            score = 0
            
            questionName.text = Questions[index].question
            Score.text = "Score: \(score)"
        }
    }
    
    @IBAction func Checkanswer(_ sender: Any) {
        var current = answerTextField.text
        
        if current?.lowercased().trimmingCharacters(in:
                .whitespacesAndNewlines) == Questions[index].answer.lowercased().trimmingCharacters(in: .whitespaces){
            score += 1
            Score.text = "Score : \(score)"
            answerTextField.text = nil
            if index < Questions.count{
                index += 1
                questionName.text = Questions[index].question
            }
        }
        
    }
 
    
    
    
}


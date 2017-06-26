//
//  ViewController.swift
//  Name that Celebrity!
//
//  Created by Siddharth Rajan on 6/17/17.
//  Copyright © 2017 CodeOfSid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Question number
    var question = 1
    
    // User's score
    var score = Int()
    
    // When question number is passed to function, function will change the question accordingly
    func change_question(question: Int) { // Figure out answer choices, pictures, hint labels later
        
        if question == 1 {
            // Go to question 2; Answer is 3
            
            questionLabel.text = "Question \(question + 1)"
            pictureimage.image = UIImage(named: "Jay Z")
            hintLabel.text = "Hint: He was known as a child prodigy."
            Button1.setTitle( "1: Chris Hemsworth" , for: [] )
            Button2.setTitle( "2: Justin Beiber" , for: [] )
            Button3.setTitle( "3: Jay Z" , for: [] )
            Button4.setTitle( "4: Johnny Depp" , for: [] )
        }
        
        else if question == 2 {
            // Go to question 3; Answer is 4
            
            questionLabel.text = "Question \(question + 1)"
            pictureimage.image = UIImage(named: "Justin Timberlake")
            hintLabel.text = "Hint: He was once a member of the Mickey Mouse Club."
            Button1.setTitle( "1: Channing Tatum" , for: [] )
            Button2.setTitle( "2: Ryan Gosling" , for: [] )
            Button3.setTitle( "3: David Beckham" , for: [] )
            Button4.setTitle( "4: Justin Timberlake" , for: [] )
        }
        
        else if question == 3 {
            // Go to question 4; Answer is 3
            
            questionLabel.text = "Question \(question + 1)"
            pictureimage.image = UIImage(named: "Demi Lovato")
            hintLabel.text = "Hint: She is part Mexican, Irish, Italian and English."
            Button1.setTitle( "1: Beyoncé" , for: [] )
            Button2.setTitle( "2: Jennifer Lawrence" , for: [] )
            Button3.setTitle( "3: Demi Lovato" , for: [] )
            Button4.setTitle( "4: Angelina Jolie" , for: [] )
        }
        
        else if question == 4 {
            // Go to question 5; Answer is 1
            
            questionLabel.text = "Question \(question + 1)"
            pictureimage.image = UIImage(named: "Ed Sheeran")
            hintLabel.text = "Hint: He was born on February 17, 1991."
            Button1.setTitle( "1: Ed Sheeran" , for: [] )
            Button2.setTitle( "2: Calvin Harris" , for: [] )
            Button3.setTitle( "3: Zayn Malik" , for: [] )
            Button4.setTitle( "4: Jamie Foxx" , for: [] )
        }
        
        else if question == 5 {
            // Go to question 6; Answer is 1
            
            questionLabel.text = "Question \(question + 1)"
            pictureimage.image = UIImage(named: "Ariana Grande")
            hintLabel.text = "Hint: She is a young pop star with three hit albums."
            Button1.setTitle( "1: Ariana Grande" , for: [] )
            Button2.setTitle( "2: Alicia Keys" , for: [] )
            Button3.setTitle( "3: Gwen Stefani" , for: [] )
            Button4.setTitle( "4: Emma Watson" , for: [] )
        }
        
        else if question == 6 {
            // Go to question 7; Answer is 4
            
            questionLabel.text = "Question \(question + 1)"
            pictureimage.image = UIImage(named: "Shawn Mendes")
            hintLabel.text = "Hint: He smashed a guitar in one of his music videos."
            Button1.setTitle( "1: Kanye West" , for: [] )
            Button2.setTitle( "2: Ashton Kutcher" , for: [] )
            Button3.setTitle( "3: Tom Cruise" , for: [] )
            Button4.setTitle( "4: Shawn Mendes" , for: [] )
        }
        
        else if question == 7 {
            // Go to results page in next view controller
            
            // [1] Create a new "ScorePage" instance.
            let storyboard = UIStoryboard(name: "ScorePage", bundle: nil)
            
            // [2] Create an instance of the storyboard's initial view controller.
            let controller = storyboard.instantiateViewController(withIdentifier: "ScorePage") as! ViewController2
            
            controller.the_score = "Your Score: \(score)/7"
            
            if score == 7 {
                controller.the_comment = "100%! Excellent!"
            }
            else if score == 5 || score == 6 {
                controller.the_comment = "Good Job!"
            }
            else if score == 3 || score == 4 {
                controller.the_comment = "Not bad..."
            }
            else if score == 0 || score == 1 || score == 2 {
                controller.the_comment = "Oh :( Better luck next time!"
            }
            
            // [3] Display the new view controller.
            present(controller, animated: true, completion: nil)
        }
        
    }
    
    // Objects for question label, picture image, hint label, and buttons
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var pictureimage: UIImageView!
    @IBOutlet weak var hintLabel: UILabel!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    
    // These control button actions
    @IBAction func button1(_ sender: AnyObject) {
        
        if question == 5 || question == 6 {
            score = score + 1
        }
        
        change_question(question: question)
        
        question = question + 1
        
    }
    
    @IBAction func button2(_ sender: AnyObject) {
        
        if question == 1 {
            score = score + 1
        }
        
        change_question(question: question)
        
        question = question + 1
        
    }
    
    @IBAction func button3(_ sender: AnyObject) {
        
        if question == 2 || question == 4 {
            score = score + 1
        }
        
        change_question(question: question)
        
        question = question + 1
        
    }
    
    @IBAction func button4(_ sender: AnyObject) {
        
        if question == 3 || question == 7 {
            score = score + 1
        }
        
        change_question(question: question)
        
        question = question + 1
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


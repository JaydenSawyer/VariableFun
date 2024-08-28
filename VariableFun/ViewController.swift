//
//  ViewController.swift
//  VariableFun
//
//  Created by JAYDEN SAWYER on 8/26/24.
//

import UIKit

// Steps to get return key to dismiss keyboard
// 1) add a delegate
// 2) attach the delegate to textfield
// 3) write textFieldShouldReturn function

class ViewController: UIViewController, UITextFieldDelegate {
    // Let makes things constants and not changable
    let pony = 6 //constant declared and initialized(type inference)
    var dog = 7.5 //declare and inirialize a variable
    var cat: Int? // declaring an optional(could be nil)
    var horse: Double! // declaring a non optional(cant be nil)
    var ant: String? //declaring a variable(must initialize in init/constructor)
    var git = true
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldOutlet.delegate = self
        
        // Creating object of the double class
        print(Double(pony) + dog)
        
        //print(cat! + 5)
        //force unwrapping cat with !
        //making sure something is in cat
        
        // Safely unwrapping cat
        if let blah = cat{
            print(blah + 5)
            print("cat is " + String(blah))
            print("cat is \(blah)") // string interpolation
        }else{
            print("ERROR")
        }
        //Safe unwrapping cat
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonAction(_ sender: UIButton) {
        //gets the text out of the textfield
        var pig = textFieldOutlet.text!
        // nil coalescing (giving a defualt value if it is nil)
        var frog = Int(pig) ?? 0
        print(frog + 5)
        textFieldOutlet.resignFirstResponder() //makes the keyboard dissapear 
    }
    // function automatically gets called when user hits return on keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textFieldOutlet.resignFirstResponder()
    }
    
}


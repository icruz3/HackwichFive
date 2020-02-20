//
//  ViewController.swift
//  HackwichFive
//
//  Created by Isaac Cruz on 2/20/20.
//  Copyright © 2020 Isaac Cruz. All rights reserved.
//

import UIKit




class ViewController: UIViewController {
    
    var currentIndex = 0
    
    //favorite foods array
    var favoriteFoodArray = ["pizza","rice"," pita bread", "pasta"]

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var buttonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.topLabel.text = "my favorite foods"
    }
    //created an ibaction to execute a series of tasks (line of code) upon button pressed.
    @IBAction func buttonPressed(_ sender: Any)
    {
        //created command to access food array
        self.bottomLabel.text = favoriteFoodArray[currentIndex]
        //created a button to iterate to the next food
        if self.currentIndex < self.favoriteFoodArray.count
        {
            // allows to move to the next food
            currentIndex=currentIndex + 1

            //states the word Next after button pressed
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
    }
    else
        {
            //disables the button process
          (sender as! UIButton).isEnabled = false
        }
    
}
}

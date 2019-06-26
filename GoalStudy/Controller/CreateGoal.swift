//
//  CreateGoal.swift
//  GoalStudy
//
//  Created by formathead on 25/06/2019.
//  Copyright © 2019 formathead. All rights reserved.
//

import UIKit

class CreateGoal: UIViewController {

    
    @IBOutlet weak var textField: UITextView!
    @IBOutlet weak var shortTerm: UIButton!
    @IBOutlet weak var longTerm: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    var goalType: GoalType = .shortTrem
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.bindToKeyboard()
        shortTerm.setSelectedColor()
        longTerm.setDeselectedColor()
    }
    
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    
    @IBAction func shortBtnPressed(_ sender: Any) {
        goalType = .shortTrem
        shortTerm.setSelectedColor()
        longTerm.setDeselectedColor()
    }
    
    @IBAction func longBtnPressed(_ sender: Any) {
        goalType = .longTerm
        shortTerm.setDeselectedColor()
        longTerm.setSelectedColor()
    }
    
    @IBAction func nextBtnPressed(_ sender: Any) {
        
    }
    
}//End Of The Class


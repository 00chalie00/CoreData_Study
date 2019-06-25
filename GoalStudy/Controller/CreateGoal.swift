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
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func shortBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func longBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func nextBtnPressed(_ sender: Any) {
        
    }
    
}//End Of The Class


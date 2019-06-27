//
//  FinishVC.swift
//  GoalStudy
//
//  Created by formathead on 27/06/2019.
//  Copyright © 2019 formathead. All rights reserved.
//

import UIKit

class FinishVC: UIViewController {

    @IBOutlet weak var pointTxtField: UITextField!
    @IBOutlet weak var createGoalBtn: UIButton!
    
    var goalDescription: String?
    var goalType: GoalType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
        
    }
    
    func configureView(goalDescript: String, type: GoalType) {
        self.goalDescription = goalDescript
        self.goalType = type
    }
    
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    @IBAction func createBtnWasPressed(_ sender: Any) {
        
    }
    

}//End Of The Class

//
//  CreateGoal.swift
//  GoalStudy
//
//  Created by formathead on 25/06/2019.
//  Copyright © 2019 formathead. All rights reserved.
//

import UIKit

class CreateGoal: UIViewController, UITextViewDelegate {

    
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
        textField.delegate = self
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
        if textField.text != "" && textField.text != "What is your Goal" {
            guard let finishVC = storyboard?.instantiateViewController(withIdentifier: "finishVC") as? FinishVC else { return }
            presentDetail(finishVC)
        }
    }
    
    //UITextViewDelegate를 설정 후 optional func를 구현
    //textfield가 선택 되었을 때 call됨
    func textViewDidBeginEditing(_ textView: UITextView) {
        textField.text = ""
        textField.textColor = UIColor.black
    }
    
}//End Of The Class


//
//  ViewController.swift
//  GoalStudy
//
//  Created by formathead on 24/06/2019.
//  Copyright © 2019 formathead. All rights reserved.
//

import UIKit

class GoalStudy: UIViewController {
    
    //Outlet
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func addGoalBtnPressed(_ sender: Any) {
        print("add Button Pressed")
    }
}


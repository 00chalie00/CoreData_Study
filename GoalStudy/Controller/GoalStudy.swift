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
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isHidden = false
        
    }


    @IBAction func addGoalBtnPressed(_ sender: Any) {
        guard let createGialVC = storyboard?.instantiateViewController(withIdentifier: "CreateGialVC") else {return}
        presentDetail(createGialVC)
    }
    
}//End Of The Class

extension GoalStudy: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else { return UITableViewCell() }
        cell.configureCell(description: "Eat the healthy Food", type: .shortTrem, progressAmount: 12)
        
        return cell
    }
    
}


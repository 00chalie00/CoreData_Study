//
//  UIViewControllerExt.swift
//  GoalStudy
//
//  Created by formathead on 25/06/2019.
//  Copyright © 2019 formathead. All rights reserved.
//

import UIKit

extension UIViewController {
    func presentDetail(_ viewControllerToPresent: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = .moveIn //4가지 Type가 존재함
        transition.subtype = CATransitionSubtype.fromRight
        //forkey로 검색하면 나옴
        self.view.window?.layer.add(transition, forKey: kCATransition)
        //animate로 검색하면 나옴
        present(viewControllerToPresent, animated: false, completion: nil)
    }
    
    func dismissDetail() {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = .reveal //4가지 Type가 존재함
        transition.subtype = CATransitionSubtype.fromLeft
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false, completion: nil)
    }
}

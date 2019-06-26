//
//  UIButtonExt.swift
//  GoalStudy
//
//  Created by formathead on 26/06/2019.
//  Copyright © 2019 formathead. All rights reserved.
//

import UIKit

extension UIButton {
    func setSelectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.2352941176, green: 1, blue: 0.3333333333, alpha: 1)
    }
    
    func setDeselectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    }
}

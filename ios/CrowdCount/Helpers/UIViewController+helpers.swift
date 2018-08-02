//
//  UIViewController+helpers.swift
//  CrowdCount
//
//  Created by Dimitri Roche on 7/28/18.
//  Copyright © 2018 Dimitri Roche. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func addViewableChild(childController: UIViewController) {
        addChild(childController)
        childController.view.frame = self.view.bounds
        view.addSubview(childController.view)
        childController.didMove(toParent: self)
    }
}

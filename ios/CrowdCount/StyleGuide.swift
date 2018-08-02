//
//  StyleGuide.swift
//  CrowdCount
//
//  Created by Dimitri Roche on 8/1/18.
//  Copyright © 2018 Dimitri Roche. All rights reserved.
//

import Foundation
import UIKit

class StyleGuide {
    static var thumbnailSize: CGSize {
        return CGSize(width: 360, height: 360)
    }
}

extension UILabel {
    @discardableResult
    func h1() -> UILabel {
        font = UIFont(name: "System", size: 60)
        textColor = .darkGray
        return self
    }

    @discardableResult
    func h3() -> UILabel {
        font = UIFont(name: "System", size: 24)
        textColor = .white
        shadowColor = UIColor.darkGray
        shadowOffset = CGSize(width: 1, height: 1)
        return self
    }

    @discardableResult
    func h4() -> UILabel {
        font = UIFont(name: "System", size: 18)
        textColor = UIColor(white: 0.85, alpha: 1)
        shadowColor = .darkGray
        shadowOffset = CGSize(width: 1, height: 1)
        return self
    }

    @discardableResult
    func centerTextAlignment() -> UILabel {
        textAlignment = .center
        return self
    }

    @discardableResult
    func leftTextAlignment() -> UILabel {
        textAlignment = .left
        return self
    }

    @discardableResult
    func dark() -> UILabel {
        textColor = .darkGray
        shadowColor = UIColor.clear
        shadowOffset = CGSize()
        return self
    }
}

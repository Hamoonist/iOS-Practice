//
//  UIView+Shadow.swift
//  iOS-Practice
//
//  Created by Hamoon Jamshidi Meydandar on 2020. 08. 23..
//

import UIKit


@IBDesignable extension UIView {
    @IBInspectable public var shadow: Bool {
        set{
            if newValue{
                let shadowPath = UIBezierPath(rect: CGRect(x: 0,
                                                           y: 0,
                                                           width: self.frame.height,
                                                           height: self.frame.height))

                self.layer.shadowColor = UIColor.black.cgColor
                self.layer.shadowOffset = CGSize(width: 10, height: 10)
                self.layer.shadowOpacity = 0.5
                self.layer.shadowRadius = 25.0
                self.layer.shadowPath = shadowPath.cgPath
            }
        }
        get {
            return false
        }
    }
    
}

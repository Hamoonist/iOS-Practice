//
//  UIImage+circleShaped.swift
//  iOS-Practice
//
//  Created by Hamoon Jamshidi Meydandar on 2020. 09. 04..
//

import UIKit


@IBDesignable extension UIImageView {
    @IBInspectable public var circleShaped: Bool {
        set{
            self.cornerRadius = self.frame.height / 2
        }
        get{
            true
        }
    }
}

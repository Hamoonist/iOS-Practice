//
//  UISlider+changeThumb.swift
//  iOS-Practice
//
//  Created by Hamoon Jamshidi Meydandar on 2020. 08. 24..
//

import UIKit
@IBDesignable extension UISlider {
    @IBInspectable public var smallThumb: Bool {
        set{
            let config = UIImage.SymbolConfiguration(pointSize: 8, weight: .thin, scale: .small)
            let circleImage = UIImage(systemName: "circle.fill" , withConfiguration: config)
    
            self.setThumbImage(circleImage, for: .normal)
            self.setThumbImage(circleImage, for: .highlighted)
        }
        get {
            return true
        }
    }
    
}

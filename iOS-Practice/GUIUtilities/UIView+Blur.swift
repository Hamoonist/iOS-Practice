//
//  UIViewAddBlurExtension.swift
//  iOS-Practice
//
//  Created by Hamoon Jamshidi Meydandar on 2020. 08. 23..
//

import UIKit

fileprivate var blurViewtag : Int = 10394012

@IBDesignable extension UIView {
    /**
        Sets a blurred view in front of the view ( self )
    */
    @IBInspectable var blurred: Bool {
        set {
            if newValue {
                self.blur()
            }else{
                guard  let blurView = self.viewWithTag(blurViewtag) else { return }
                blurView.removeFromSuperview()
            }
        }
        get {
           // guard self.viewWithTag(blurViewtag) != nil else { return false }
            return true
        }
    }
    
       @discardableResult func blur() -> UIVisualEffectView {
        let blur = UIBlurEffect(style: .systemThinMaterial)
           let blurView = UIVisualEffectView(effect: blur)
           blurView.frame = self.bounds
           //blurView.tag = blurViewtag
           self.addSubview(blurView)
           self.sameSizeAndCenter(as: blurView)
           return blurView
       }
    
}

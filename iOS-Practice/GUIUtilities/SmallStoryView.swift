//
//  SmallStoryView.swift
//  iOS-Practice
//
//  Created by Hamoon Jamshidi Meydandar on 2020. 09. 04..
//

import UIKit

@IBDesignable
class SmallStoryView : UIView{
    var image: UIImage?
    var newStoryGradient : CAGradientLayer?
    var whiteCirlce: CALayer!
    var _newStoryWidth: CGFloat = 2
    
    
    
    func setup(){
        /// TODO:
        ///
        /// 1. Add the outer circle
        self.newStoryGradient = CAGradientLayer()
        newStoryGradient!.frame = self.bounds
        let yellow = UIColor(hue: 0.12, saturation: 0.81, brightness: 0.99, alpha: 1.0).cgColor
        let purple = UIColor(hue:0.79, saturation:0.82, brightness:0.83, alpha:1.00).cgColor
        newStoryGradient!.colors = [yellow  , purple]
        newStoryGradient!.startPoint = .init(x: 0.0, y: 1.0)
        newStoryGradient!.endPoint = .init(x: 1.0, y: 0.0)
        self.layer.insertSublayer(newStoryGradient!, at: 0)
        //self.circleShaped = true
        
        /// 2. Add a white circle in the outer circle
        self.whiteCirlce = CALayer()
        self.whiteCirlce.backgroundColor = UIColor.white.cgColor
        
        self.layer.insertSublayer(whiteCirlce, at: 1)
        
        //self.whiteCirlce
        
        /// 3. Add the image on the white circle
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        if self.newStoryGradient != nil {
            self.newStoryGradient!.frame = self.bounds
            newStoryGradient!.cornerRadius = newStoryGradient!.frame.height / 2
        }
        
        let whiteCircleOrigin =
            CGPoint(x: self.bounds.origin.x + (_newStoryWidth / 2) ,
                    y: self.bounds.origin.y + (_newStoryWidth / 2))
        let whiteCircleSize = CGSize(width:  self.bounds.width - _newStoryWidth, height: self.bounds.height  - _newStoryWidth)
        self.whiteCirlce.frame = CGRect(origin:  whiteCircleOrigin,
                size: whiteCircleSize )
        self.whiteCirlce.cornerRadius = self.whiteCirlce.frame.height / 2

    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setup()
    }
}

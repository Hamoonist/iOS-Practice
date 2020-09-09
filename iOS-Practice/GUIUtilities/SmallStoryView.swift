//
//  SmallStoryView.swift
//  iOS-Practice
//
//  Created by Hamoon Jamshidi Meydandar on 2020. 09. 04..
//

import UIKit

@IBDesignable
class SmallStoryView : UIView{
    var newStoryGradient : CAGradientLayer?
    var whiteCirlce: CALayer!
    var _newStoryWidth: CGFloat = 2
    //var imageView: UIImageView!
    var imageLayer : CALayer!
    var _imageInset : CGFloat = 8
    var _watchedAlready : Bool = false
    
    var gradients :[CGColor] {
        if _watchedAlready {
            
            let grey = UIColor(hue: 0, saturation: 0, brightness: 0.6
            , alpha: 1).cgColor
            return [grey, grey]
        }else{
            let yellow = UIColor(hue: 0.12, saturation: 0.81, brightness: 0.99, alpha: 1.0).cgColor
            let purple = UIColor(hue:0.79, saturation:0.82, brightness:0.83, alpha:1.00).cgColor

            return [yellow, purple]
        }
    }
    
    func setup(){
        /// TODO:
        ///
        /// 1. Add the outer circle
        self.newStoryGradient = CAGradientLayer()
        newStoryGradient!.colors = self.gradients
        newStoryGradient!.startPoint = .init(x: 0.0, y: 1.0)
        newStoryGradient!.endPoint = .init(x: 1.0, y: 0.0)
        self.layer.insertSublayer(newStoryGradient!, at: 0)
        
        
        /// 2. Add a white circle in the outer circle
        self.whiteCirlce = CALayer()
        self.whiteCirlce.backgroundColor = UIColor.white.cgColor
        
        self.layer.insertSublayer(whiteCirlce, at: 1)
        
        
        
        self.imageLayer = CALayer()
        self.layer.addSublayer(imageLayer)
        
        
    }
    private func fixTheLayout(){
        
        if self.newStoryGradient != nil {
            self.newStoryGradient!.frame = self.bounds
            self.newStoryGradient?.colors = gradients
            newStoryGradient!.cornerRadius = newStoryGradient!.frame.height / 2
        }
        
        self.whiteCirlce.frame = innerCircleFrame(inset: _newStoryWidth)
        self.whiteCirlce.cornerRadius = self.whiteCirlce.frame.height / 2

        
        self.imageLayer.frame = innerCircleFrame(inset: _imageInset)
        self.imageLayer.cornerRadius = self.imageLayer.frame.height / 2
        self.imageLayer.masksToBounds = true
        
        
        
    }
    private func innerCircleFrame(inset: CGFloat) -> CGRect {
        
        let origin = CGPoint(x: self.bounds.origin.x + (inset / 2),
                             y: self.bounds.origin.y + (inset / 2) )
        
        let size = CGSize(width:  self.bounds.width - inset,
                          height: self.bounds.height  - inset)
        
        return CGRect(origin: origin, size: size)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.fixTheLayout()

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

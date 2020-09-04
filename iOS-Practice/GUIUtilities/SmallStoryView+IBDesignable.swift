//
//  SmallStoryView+IBDesignable.swift
//  iOS-Practice
//
//  Created by Hamoon Jamshidi Meydandar on 2020. 09. 04..
//

import UIKit


@IBDesignable
extension SmallStoryView{
    @IBInspectable public var storyImage: UIImage? {
        set {
            self.imageLayer.contents = newValue?.cgImage
            self.imageLayer.contentsGravity =  CALayerContentsGravity.resizeAspect
        }
        get {
            self.imageLayer.contents as? UIImage
        }
    }
    @IBInspectable public var circleWidth: CGFloat {
        set {
            self._newStoryWidth = newValue
        }
        get{
            self._newStoryWidth
        }
    }
    @IBInspectable public var imageInset : CGFloat {
        set{
            self._imageInset = newValue
        }
        get {
            self._imageInset
        }
    }
}

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
            self.image = newValue
        }
        get {
            self.image
        }
    }
    @IBInspectable public var newStoryWidth: CGFloat {
        set {
            self._newStoryWidth = newValue
        }
        get{
            self._newStoryWidth
        }
    }
}

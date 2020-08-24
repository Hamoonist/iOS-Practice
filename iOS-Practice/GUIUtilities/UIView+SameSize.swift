//
//  UIView+SameSize.swift
//  iOS-Practice
//
//  Created by Hamoon Jamshidi Meydandar on 2020. 08. 23..
//

import UIKit
extension UIView{
    /// Add constraints to two views to be the same size
    func sameSize(as otherView: UIView , offset: CGFloat = 0){
        self.translatesAutoresizingMaskIntoConstraints = false
        otherView.translatesAutoresizingMaskIntoConstraints = false

        self.heightAnchor.sameSizeAs(otherView.heightAnchor, offset: offset)
        self.widthAnchor.sameSizeAs(otherView.widthAnchor, offset:  offset)
    }
    /// Add constraint to make the center of two views equal
    func samePosition(as otherView: UIView){
        self.centerYAnchor.sameSizeAs(otherView.centerYAnchor)
        self.centerXAnchor.sameSizeAs(otherView.centerXAnchor)
    }
    func sameSizeAndCenter(as otherView: UIView, offset: CGFloat = 0){
        self.sameSize(as: otherView, offset:  offset)
        self.samePosition(as: otherView)
    }
}

extension NSLayoutAnchor{
    /// Add constraint to make it same size as another NSLayoutAnchor
    @objc func sameSizeAs(_ other: NSLayoutAnchor, offset: CGFloat = 0){
        self.constraint(equalTo: other, constant: offset).isActive = true
    }
}


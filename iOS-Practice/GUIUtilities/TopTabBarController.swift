//
//  TopTabBarController.swift
//  iOS-Practice
//
//  Created by Hamoon Jamshidi Meydandar on 2020. 09. 09..
//

import UIKit


class TopTabBarController: UITabBarController {
    override func viewDidLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.putTheBarOnTop()
    }
    func putTheBarOnTop(){
        self.tabBar.frame = CGRect( x: self.view.frame.minX, y: self.view.frame.minY, width: self.view.frame.width, height: 50)
    }
}

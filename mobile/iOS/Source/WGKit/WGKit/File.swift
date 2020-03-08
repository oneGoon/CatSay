//
//  File.swift
//  WGKit
//
//  Created by WangGang on 2020/3/8.
//  Copyright © 2020 onegoon. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationController {
    public func foo() {
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeFlow(_:)))
        swipe.direction = .down
        self.navigationBar.addGestureRecognizer(swipe)
    }
    
    @objc
    func swipeFlow(_ ges: UISwipeGestureRecognizer) {
        let detail = UIViewController()
        detail.view.backgroundColor = .red
        detail.view.frame = CGRect(x: 50, y: 110, width: 100, height: 200)
        showDetailViewController(detail, sender: self)
    }
}

//
//  ViewController.swift
//  SideMenu
//
//  Created by 정미니 on 2020/06/30.
//  Copyright © 2020 정미니. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SideMenuViewControllerDelegate {
    func SideMenuDismiss() {
        UIView.animate(withDuration: 0.3) {
            self.sideView.view.frame.origin.x = -self.view.bounds.width
        }
    }
    
    
    var sideView: SideMenuViewController!

    @IBAction func click(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) {
            self.sideView.view.frame.origin.x = 0
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SideMenuViewController") as? SideMenuViewController
        sideView.delegate = self
        self.addChild(sideView)
        
        sideView.view.frame = CGRect(x: -self.view.bounds.width, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
        self.view.addSubview(sideView.view)
        sideView.didMove(toParent: self)
    }


}


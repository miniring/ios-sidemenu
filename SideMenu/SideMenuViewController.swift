//
//  SideMenuViewController.swift
//  SideMenu
//
//  Created by 정미니 on 2020/06/30.
//  Copyright © 2020 정미니. All rights reserved.
//

import UIKit

protocol SideMenuViewControllerDelegate: class {
    func SideMenuDismiss()
}

class SideMenuViewController: UIViewController {

    @IBOutlet weak var sideMenu: UIView!
    weak var delegate: SideMenuViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tabAction)))
        sideMenu.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tabAction)))
    }
    
    @objc func tabAction(_ sender: UITapGestureRecognizer) {
        if let tag = sender.view?.tag {
            if tag == 10 {
                delegate?.SideMenuDismiss()
            }
        }
    }
    
    @IBAction func click(_ sender: UIButton) {
        print("button click")
    }
    
}

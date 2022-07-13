//
//  SeguePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 백래훈 on 2022/07/13.
//

import UIKit

class SeguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func tapBackButton(_ sender: UIButton) {
        
        self.presentingViewController?.dismiss(animated: true, completion: nil)
        
    }
    
    
}

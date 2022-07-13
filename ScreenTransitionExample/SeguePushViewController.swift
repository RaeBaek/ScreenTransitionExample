//
//  SeguePushViewController.swift
//  ScreenTransitionExample
//
//  Created by 백래훈 on 2022/07/13.
//

import UIKit

class SeguePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
}

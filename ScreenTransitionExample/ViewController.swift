//
//  ViewController.swift
//  ScreenTransitionExample
//
//  Created by 백래훈 on 2022/07/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapCodePushButton(_ sender: UIButton) {
        
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") else { return }
        
        self.navigationController?.pushViewController(viewController, animated: true)
        
    }
    
    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") else { return }
        
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)
        
    }
    
}


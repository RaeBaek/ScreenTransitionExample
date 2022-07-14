//
//  ViewController.swift
//  ScreenTransitionExample
//
//  Created by 백래훈 on 2022/07/13.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapCodePushButton(_ sender: UIButton) {
        
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") as? CodePushViewController else { return }
        
        viewController.name = "RaeHoon"
//        viewController.delegate = self
        
        self.navigationController?.pushViewController(viewController, animated: true)
        
    }
    
    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") as? CodePresentViewController else { return }
        
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "RaeHoon"
        viewController.delegate = self
        self.present(viewController, animated: true, completion: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SeguePushViewController {
            viewController.name = "RaeHoon"
        }
    }
    
    
    func sendData(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }
}


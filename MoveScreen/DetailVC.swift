//
//  DetailVC.swift
//  MoveScreen
//
//  Created by 김은지 on 2023/05/01.
//

import UIKit

class DetailVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func goBackToFirstVC(_ sender: UIButton) {
//        self.navigationController?.popViewController(animated: true)

    }
    
    @IBAction func performSegueFirstVC(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goBackToFirstVC", sender: self)
        
    }
    
    
}

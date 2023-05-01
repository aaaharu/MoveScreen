//
//  DetailVC.swift
//  MoveScreen
//
//  Created by 김은지 on 2023/05/01.
//

import UIKit

class DetailVC: UIViewController {
    
    @IBOutlet weak var bigLabel: UILabel!
    var someValue:String = "" {
        didSet {
            print("someValue: \(someValue)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bigLabel.text = someValue
        
    }
    @IBAction func goBackToFirstVC(_ sender: UIButton) {
//        self.navigationController?.popViewController(animated: true)

    }
    
    @IBAction func performSegueFirstVC(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goBackToFirstVC", sender: self)
        
    }
    
    
}

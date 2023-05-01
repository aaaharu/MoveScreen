//
//  SecondVC.swift
//  MoveScreen
//
//  Created by 김은지 on 2023/05/01.
//

import UIKit

class SecondVC: UIViewController {
    var someValue: String = "" {
        didSet {
            print("someValue: \(someValue)")
        }
    }
    @IBOutlet weak var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = someValue
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

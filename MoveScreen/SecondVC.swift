//
//  secondVC.swift
//  MoveScreen
//
//  Created by 김은지 on 2023/05/01.
//

import UIKit

class secondVC: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    init
    
    var someValue: String = "" {
        didSet {
            print("didSet: \(someValue)")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = someValue
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

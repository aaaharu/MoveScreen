//
//  ThirdVC.swift
//  MoveScreen
//
//  Created by 김은지 on 2023/05/01.
//

import UIKit


class ThirdVC: UIViewController {

    
    var someValue : String = ""

    @IBOutlet weak var mainLabel: UILabel!
    
    
    init?(coder: NSCoder, someValue: String){
            self.someValue = someValue
            super.init(coder: coder)
     
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
         
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainLabel.text = someValue
        
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

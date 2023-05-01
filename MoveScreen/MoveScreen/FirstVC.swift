//
//  ViewController.swift
//  MoveScreen
//
//  Created by 김은지 on 2023/05/01.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var navToSecondBtn: UIButton!
    
    @IBOutlet weak var navToThirdBtn: UIButton!
    
    @IBOutlet weak var userInputTextField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        navToSecondBtn.addTarget(self, action: #selector(navToSecondVC), for: .touchUpInside)
        navToThirdBtn.addTarget(self, action: #selector(navToThirdVC), for: .touchUpInside)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            super.prepare(for: segue, sender: sender)
            
            if let secondVC = segue.destination as?  SecondVC {
                secondVC.someValue = userInputTextField.text ?? "값이 없음"}
        } 
    @objc func navToSecondVC(_ sender: UIButton) {
        self.performSegue(withIdentifier: "NavToSecondVC", sender: self)
    }

    @objc func navToThirdVC(_ sender: UIButton) {
        self.performSegue(withIdentifier: "NavToThirdVC", sender: self)
    }
    
    // 보내는 곳


    @IBSegueAction func navToSecondVCWithSomeData(coder: NSCoder, sender: Any?, segueIdentifier: String?) -> ThirdVC? {
            print(#fileID, #function, #line, "- segueIdentifier: \(segueIdentifier)")
            
            let dataToSend = userInputTextField.text ?? "값이 없다"
            
            return ThirdVC(coder: coder, someValue: dataToSend)
        }
    
    // 돌아갈 화면에 코드 만들어놓기
    @IBAction func backToSecondVC(unwindSegue: UIStoryboardSegue) {
            
        }
    
}


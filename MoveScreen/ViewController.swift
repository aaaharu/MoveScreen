//
//  ViewController.swift
//  MoveScreen
//
//  Created by 김은지 on 2023/05/01.
//

import UIKit

class ViewController: UIViewController {

    var stepNumber: Int = 1 {
        didSet {
            self.title = "스텝넘버 : \(stepNumber)"
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func onPushBtnClicked(_ sender: UIButton) {
        
        // 스토리보드 가져오기
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        // 뷰컨 가져오기
        let vc = mainStoryboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        vc.stepNumber = stepNumber + 1
        
        // 푸시하기
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}


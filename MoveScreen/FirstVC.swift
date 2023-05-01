//
//  ViewController.swift
//  MoveScreen
//
//  Created by 김은지 on 2023/05/01.
//

import UIKit

class FirstVC: UIViewController {

    var stepNumber: Int = 1 {
        didSet {
            self.title = "스텝넘버 : \(stepNumber)"
        }
    }
    @IBOutlet weak var navToSecondVCBtn: UIButton!
    
    @IBOutlet weak var navToDetailBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navToSecondVCBtn.addTarget(self, action: #selector(navToSecondVC), for: .touchUpInside)
        navToDetailBtn.addTarget(self, action: #selector(navToDetailVC), for: .touchUpInside)

    }
    
    @objc fileprivate func navToSecondVC(_ sender: UIButton) {
        print(#fileID, #function, #line, "- ")
        self.performSegue(withIdentifier: "navToSecondVC", sender: self)
        
    }
    
    @objc fileprivate func navToDetailVC(_ sender: UIButton) {
        print(#fileID, #function, #line, "- ")
        self.performSegue(withIdentifier: "navToDetailVC", sender: self)
        

    }

    @IBAction func onPushBtnClicked(_ sender: UIButton) {
        
        // 스토리보드 가져오기
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        // 뷰컨 가져오기
        if let vc = mainStoryboard.instantiateViewController(withIdentifier: "FirstVC") as? FirstVC {
            vc.stepNumber = stepNumber + 1
            
            // 푸시하기
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
    @IBAction func goBackToFirstVC(unwindSegue: UIStoryboardSegue) {
        
        
    }
}


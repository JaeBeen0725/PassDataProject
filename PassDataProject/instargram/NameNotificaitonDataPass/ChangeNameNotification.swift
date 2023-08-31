//
//  ChangeNameNotification.swift
//  PassDataProject
//
//  Created by Jae Oh on 2023/08/30.
//

import UIKit

class ChangeNameNotification: DetailSettingBaseViewController {
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
      
        detailSettingTextField.placeholder = "이름을 입력하세요"
        
           navigationItem.rightBarButtonItem = UIBarButtonItem(title: "설정", style: .plain, target: self, action: #selector(completeButtonClicked))
       
    }
    
    
    @objc func completeButtonClicked() {
        
        NotificationCenter.default.post(name: NSNotification.Name("Name"), object: nil, userInfo: ["name": detailSettingTextField.text!])
        
        navigationController?.popViewController(animated: true)
        
    }
    
    
  
}

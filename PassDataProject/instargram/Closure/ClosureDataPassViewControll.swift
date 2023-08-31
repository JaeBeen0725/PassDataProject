//
//  ClosureDataPassViewControll.swift
//  PassDataProject
//
//  Created by Jae Oh on 2023/08/31.
//

import UIKit

class ClosureDataPassViewControll: DetailSettingBaseViewController {
    
    var completionHandler: ((String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "설정", style: .plain, target: self, action: #selector(buttonTapped))
    }
    
    @objc func buttonTapped() {
        
        completionHandler?(detailSettingTextField.text!)
        
        
        navigationController?.popViewController(animated: true)
    }
   
    
    
    
}

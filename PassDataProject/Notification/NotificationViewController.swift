//
//  DataViewController.swift
//  PassDataProject
//
//  Created by Jae Oh on 2023/08/29.
//

import UIKit

class DataViewController: SecondBaseViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.addSubview(addwordTextField)
        dataVCSetting()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "완료", style: .plain, target: self, action: #selector(completionButtonClicked))
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    
    @objc func completionButtonClicked() {
        print("==========포스트=====", #function)
        NotificationCenter.default.post(name: Notification.Name("Notification"), object: nil, userInfo: ["name": addwordTextField.text!])
        navigationController?.popViewController(animated: false)
        
    }
    
    
  
    
    
}

//
//  ProtocolViewController.swift
//  PassDataProject
//
//  Created by Jae Oh on 2023/08/30.
//

import UIKit

class ClosureViewController: SecondBaseViewController {
    
    var closureDataPass: ((String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "완료", style: .plain, target: self, action: #selector(completionButtonClicked))
        
    }
    
    @objc func completionButtonClicked() {
        closureDataPass?(addwordTextField.text!)
        
        navigationController?.popViewController(animated: true)
        
    }
    
    
    
 
    
    
}



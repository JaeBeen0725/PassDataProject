//
//  DelegateViewController.swift
//  PassDataProject
//
//  Created by Jae Oh on 2023/08/29.
//

import UIKit

//protocol

class DelegateViewController: SecondBaseViewController {
    

    
    var delegate: PassDataDelegate?
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "완료", style: .plain , target: self, action: #selector(completionButtonClicked))
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
 
    }
    
    @objc func completionButtonClicked() {
        print(#function)
        delegate?.receivetext(text: addwordTextField.text!)
        
        navigationController?.popViewController(animated: false)
        
    }
    
}

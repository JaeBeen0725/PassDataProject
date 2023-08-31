//
//  DelegateDataPassViewController.swift
//  PassDataProject
//
//  Created by Jae Oh on 2023/08/31.
//

import UIKit

protocol UserNamePassDataDelegate {
    func receiveData(data: String)
}


class DelegateDataPassViewController: DetailSettingBaseViewController {
    
    var delegate: UserNamePassDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "설정", style: .plain, target: self, action: #selector(completeButtonClicked))
        
       
    }
    
    @objc func completeButtonClicked() {
        
        delegate?.receiveData(data: detailSettingTextField.text ?? "값없음얼럿띄워")
        
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    
    
}

//
//  SecondBaseViewController.swift
//  PassDataProject
//
//  Created by Jae Oh on 2023/08/29.
//

import UIKit

class SecondBaseViewController: UIViewController {
    
    let addwordTextField = {
        
        let view = UITextField()
        view.textColor = .black
        view.backgroundColor = .white
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        
        view.addSubview(addwordTextField)
        dataVCSetting()
        
    }

    
    func dataVCSetting() {
        
        addwordTextField.snp.makeConstraints { make in
            make.leadingMargin.trailingMargin.equalToSuperview()
            make.height.equalTo(40)
            make.center.equalToSuperview()
        }
        
    }
    
    
    
}

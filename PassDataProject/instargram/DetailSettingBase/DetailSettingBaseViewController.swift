//
//  File.swift
//  PassDataProject
//
//  Created by Jae Oh on 2023/08/30.
//

import UIKit

class DetailSettingBaseViewController: UIViewController {
    
    let detailSettingTextField = {
        
        let view = UITextField()
        view.backgroundColor = .blue
        view.textColor = .white
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        
        configureView()
        setConstraints()
        
    }
    
    func configureView() {
        view.addSubview(detailSettingTextField)
    }
    
    
    func setConstraints() {
        
        detailSettingTextField.snp.makeConstraints { make in
            make.leadingMargin.trailingMargin.equalToSuperview()
            make.top.horizontalEdges.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(40)
         
        }
        
    }
    
    
}


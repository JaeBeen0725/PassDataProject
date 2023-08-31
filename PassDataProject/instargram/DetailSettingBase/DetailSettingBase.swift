//
//  File.swift
//  PassDataProject
//
//  Created by Jae Oh on 2023/08/30.
//

import UIKit

class DetailSettingBase: UIViewController {
    
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
            //make.top.leadingMargin.trailingMargin.equalToSuperview()
            
           
            make.top.horizontalEdges.equalToSuperview()
         
            make.height.equalTo(200)
          //  make.center.equalToSuperview()
        }
        
     
    }
    
    
  
  
    
    
    
}


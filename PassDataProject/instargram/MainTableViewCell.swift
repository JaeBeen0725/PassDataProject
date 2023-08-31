//
//  MainTableViewCell.swift
//  PassDataProject
//
//  Created by Jae Oh on 2023/08/30.
//

import UIKit

class MainTableViewCell: UITableViewCell {

   
    
    let settingTableViewLable = {
        let view = UILabel()
        view.backgroundColor = .blue
        view.textColor = .white
        return view
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
      
        contentView.addSubview(settingTableViewLable)
      
       
        settingTableViewLable.snp.makeConstraints { make in
            make.topMargin.leadingMargin.trailingMargin.equalToSuperview()
    
            make.height.equalTo(40)
            
          
            
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}

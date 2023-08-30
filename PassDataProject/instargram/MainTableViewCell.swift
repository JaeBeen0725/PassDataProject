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
    
    let changeDataLabel = {
        let view = UILabel()
        view.backgroundColor = .cyan
        view.textColor = .green
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
      
        contentView.addSubview(settingTableViewLable)
        contentView.addSubview(changeDataLabel)
       
        settingTableViewLable.snp.makeConstraints { make in
            make.topMargin.leadingMargin.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(40)
            
            changeDataLabel.snp.makeConstraints { make in
                make.topMargin.trailingMargin.equalToSuperview()
                make.width.equalTo(100)
                make.height.equalTo(40)
            }
            
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}

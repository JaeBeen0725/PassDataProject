//
//  MainProfileSettingViewController.swift
//  PassDataProject
//
//  Created by Jae Oh on 2023/08/30.
//

import UIKit
import SnapKit

class MainProfileSettingViewController: UIViewController {
    var tableViewCellList = ["이름", "사용자 이름", "성별 대명사"]
   
    
    let topView = {
    let view = UIView()
        view.backgroundColor = .brown
        return view
    }()
    
    
    let profileImage = {
        
        let view = UIImageView()
        view.backgroundColor = .green

 return view
    }()
    
    let settingTableView = {
        
        let view = UITableView()
        view.register(MainTableViewCell.self, forCellReuseIdentifier: "MainTableViewCell")
        view.rowHeight = 40
        return view
        
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        view.backgroundColor = .white
        
        view.addSubview(topView)
        view.addSubview(profileImage)
        view.addSubview(settingTableView)
        mainViewControllerSetting()
        
        settingTableView.delegate = self
        settingTableView.dataSource = self
        
        NotificationCenter.default.addObserver(self, selector: #selector(nameNotification), name: NSNotification.Name("Name"), object: nil)
        
        
    }
    @objc func nameNotification(notification: NSNotification) {
        
        guard let data = notification.userInfo?["name"] as? String else {return}
        print("DATA", data)
      
  
        tableViewCellList[0] = data
   
        settingTableView.reloadData()
      
    }
    
    
    
    func mainViewControllerSetting() {
        
        topView.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.26)
        }
        
        profileImage.snp.makeConstraints { make in
            make.size.equalTo(topView.snp.height).multipliedBy(0.4)
            make.center.equalTo(topView)
            
        }
        
        settingTableView.snp.makeConstraints { make in
            make.top.equalTo(topView.snp.bottom)
            make.bottom.leading.trailing.equalToSuperview()
        }
        
        
    }

}


extension MainProfileSettingViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewCellList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as? MainTableViewCell else {return UITableViewCell() }
        
        cell.settingTableViewLable.text = tableViewCellList[indexPath.item]
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.item == 0 {
            
            
            navigationController?.pushViewController(ChangeNameNotification(), animated: true)
            
           
            
        } else if indexPath.item == 1 {
            
            
        } else {
            
        }
        

        
        
    }
    
    
}

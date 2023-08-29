//
//  ViewController.swift
//  PassDataProject
//
//  Created by Jae Oh on 2023/08/29.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let topView = {
        let view = UIView()
        view.backgroundColor = .red
        
     return view
    }()
    
    let thumbnailImageView = {
        let view = UIImageView()
        view.backgroundColor = .blue
        
        return view
    }()
    
    let dataRecieveTextField = {
        
        let view = UILabel()
        view.backgroundColor = .black
        view.textColor = .white
        
        return view
    }()
    
    let dataPassButton = {
        
        let view = UIButton()
        view.backgroundColor = .brown
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(topView)
        view.addSubview(thumbnailImageView)
        view.addSubview(dataRecieveTextField)
        view.addSubview(dataPassButton)
        
        mainVCSetting()
        
        
        dataPassButton.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
       
    }

    @objc func buttonClicked(){
         
        navigationController?.pushViewController(DataViewController(), animated: true)
     }
     
    
    // MARK: - notification

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
      
      
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("=====옵저버======", #function)
        NotificationCenter.default.addObserver(self, selector: #selector(addwordNotificationOberver), name: Notification.Name("Notification"), object: nil)
    }
    
    @objc func addwordNotificationOberver(notification: NSNotification) {
        
        guard let name = notification.userInfo?["name"] as? String else {return}
            
        dataRecieveTextField.text = name
        
    }
    
    
  
    
    
    
    func mainVCSetting() {
        
        topView.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.3)
        }
        
        thumbnailImageView.snp.makeConstraints { make in
            make.size.equalTo(topView.snp.height).multipliedBy(0.5)
            make.center.equalTo(topView)
        }
        
        dataRecieveTextField.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.leading.trailing.equalToSuperview()
            make.center.equalToSuperview()
        }
        
        dataPassButton.snp.makeConstraints { make in
            make.top.equalTo(dataRecieveTextField.snp.bottom).offset(20)
            make.horizontalEdges.equalToSuperview()
        }
        
        
    }
   
}


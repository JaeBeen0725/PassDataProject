//
//  ViewController.swift
//  PassDataProject
//
//  Created by Jae Oh on 2023/08/29.
//

import UIKit
import SnapKit

// MARK: - protocol값전달
protocol PassDataDelegate {
    
    func receivetext(text: String)
    
}


class ViewController: UIViewController, PassDataDelegate {
   
   
    

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
    
    let dataRecieveLabel = {
        
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
        view.addSubview(dataRecieveLabel)
        view.addSubview(dataPassButton)
        mainVCSetting()
        
        
        dataPassButton.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
       
    }

    @objc func buttonClicked(){
         
        // MARK: - notification: navigationController?.pushViewController(DataViewController(), animated: true)

        // MARK: - protocol
                
   //            let vc = DelegateViewController()
//                     vc.delegate = self
//                     navigationController?.pushViewController(vc, animated: true)
                      
        let vc = ClosureViewController()
        vc.closureDataPass = { text in
            
            self.dataRecieveLabel.text = text
            
        }
        navigationController?.pushViewController(vc, animated: true)
        
        
     }
     
    
    func receivetext(text: String) {
        dataRecieveLabel.text = text
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
            
        dataRecieveLabel.text = name
        
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
        
        dataRecieveLabel.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.leading.trailing.equalToSuperview()
            make.center.equalToSuperview()
        }
        
        dataPassButton.snp.makeConstraints { make in
            make.top.equalTo(dataRecieveLabel.snp.bottom).offset(20)
            make.horizontalEdges.equalToSuperview()
        }
        
        
    }
   
}



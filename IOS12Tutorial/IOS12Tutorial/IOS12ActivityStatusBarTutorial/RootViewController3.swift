//
//  RootViewController3.swift
//  IOS12Tutorial
//
//  Created by 이건준 on 2022/03/12.
//

import UIKit

class RootViewController3: UIViewController {
    
    lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Start", for: .normal)
        button.addTarget(self, action: #selector(tappeButton), for: .touchUpInside)
        return button
    }()
    
//    UIApplication .shared .isNetworkActivityIndicatorVisible = true
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        view.backgroundColor = .systemBackground
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
    }
    
    @objc func tappeButton() {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
}

//
//  RootViewController.swift
//  IOS12Tutorial
//
//  Created by 이건준 on 2022/03/11.
//

import UIKit

class RootViewController: UIViewController {
    
    lazy var imageView: UIImageView = {
       let vw = UIImageView()
        vw.backgroundColor = .systemBlue
        vw.contentMode = .scaleAspectFit
        vw.layer.borderWidth = 1
        vw.layer.borderColor = UIColor.black.cgColor
        return vw
    }()
    
    lazy var showButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Show Full Size", for: .normal)
        btn.addTarget(self, action: #selector(tappeButton), for: .touchUpInside)
        btn.backgroundColor = .systemRed
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        title = "Sunset"
        view.backgroundColor = .systemBackground
//        view.addSubview(imageView)
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
//        imageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        imageView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        view.addSubview(showButton)
        showButton.translatesAutoresizingMaskIntoConstraints = false
        showButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    @objc func tappeButton() {
//        imageView.image = UIImage(named: "Image")
        navigationController?.hidesBarsOnTap = true
    }
}

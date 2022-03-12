//
//  RootViewController1.swift
//  IOS12Tutorial
//
//  Created by 이건준 on 2022/03/11.
//

import UIKit

class RootViewController1: UIViewController {
    lazy var scrollView: UIScrollView = {
        let vw = UIScrollView(frame: view.bounds)
        vw.contentSize = imageView.bounds.size
        vw.backgroundColor = .systemBackground
        vw.isScrollEnabled = true
        vw.scrollsToTop = true
        vw.isPagingEnabled = true
        return vw
    }()
    
    lazy var imageView: UIImageView = {
        let vw = UIImageView(frame: .init(x: 0, y: 0, width: 1000, height: 1000))
        vw.image = UIImage(named: "Image")
        vw.contentMode = .scaleAspectFit
        return vw
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        print("size = \(imageView.bounds.size)")
        print("frame = \(imageView.frame.size)")
        
        
    }
    
    func configureUI() {
        view.backgroundColor = .systemBackground
        view.addSubview(scrollView)
//        scrollView.translatesAutoresizingMaskIntoConstraints = false
//        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        scrollView.addSubview(imageView)
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
//        imageView.leftAnchor.constraint(equalTo: scrollView.leftAnchor).isActive = true
//        imageView.rightAnchor.constraint(equalTo: scrollView.rightAnchor).isActive = true
//        imageView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        
        
    }
}

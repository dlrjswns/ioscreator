//
//  RootViewController2.swift
//  IOS12Tutorial
//
//  Created by 이건준 on 2022/03/11.
//

import UIKit

class RootViewController2: UIViewController {
    
    let imageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
        if let image = UIImage(named: "Image") {
            let originalImage = CIImage(image: image)
            
            let filter = CIFilter(name: "CIPhotoEffectMono")
            filter?.setDefaults()
            filter?.setValue(originalImage, forKey: kCIInputImageKey)
            
            if let outputImage = filter?.outputImage {
                let newImage = UIImage(ciImage: outputImage)
                imageView.image = newImage
            }
        }
    }
    
    func configureUI() {
        view.backgroundColor = .systemBackground
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}

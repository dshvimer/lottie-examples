//
//  ViewController.swift
//  lottie-ios
//
//  Created by David Shvimer on 8/7/19.
//  Copyright © 2019 David Shvimer. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    let animationView = AnimationView(name: "animation")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.loopMode = .loop
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            animationView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animationView.play()
    }
    
    


}


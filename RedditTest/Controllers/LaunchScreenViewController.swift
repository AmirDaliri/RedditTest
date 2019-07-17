//
//  LaunchScreenViewController.swift
//  RedditTest
//
//  Created by Amir Daliri on 16.07.2019.
//  Copyright © 2019 AmirDaliri. All rights reserved.
//

import UIKit
import PieCrust
import AVFoundation


class LaunchScreenViewController: PCViewController, Layouting {
    typealias View = LaunchScreenViewModel
    
    override func loadView() {
        view = View()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func setNavigationItem() {
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

    }
    
}

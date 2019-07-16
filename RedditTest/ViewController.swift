//
//  ViewController.swift
//  RedditTest
//
//  Created by Amir Daliri on 16.07.2019.
//  Copyright © 2019 AmirDaliri. All rights reserved.
//

import UIKit
import PieCrust

class ViewController: PCViewController {
    typealias View = ViewModel

    // MARK: - Lifecycle Methods
    
    override func loadView() {
        view = View()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // I'm Here...
    }

    override func setNavigationItem() {
        navigationController?.navigationBar.isHidden = false
    }
}


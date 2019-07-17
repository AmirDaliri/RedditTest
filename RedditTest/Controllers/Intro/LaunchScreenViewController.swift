//
//  LaunchScreenViewController.swift
//  RedditTest
//
//  Created by Amir Daliri on 16.07.2019.
//  Copyright © 2019 AmirDaliri. All rights reserved.
//

import UIKit
import PieCrust

class LaunchScreenViewController: PCViewController, Layouting, AlertPresenting {
    typealias View = LaunchScreenViewModel
    
    override func loadView() {
        view = View()
    }
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // I'm Here...
        
        DispatchQueue.main.async {
            SwiftSpinner.show("Fetching Data...")
        }
        fetchData()
    }
    
    override func setNavigationItem() {
        navigationController?.navigationBar.isHidden = true
    }
    

    // MARK: - API Methode
    
    func fetchData() {
        ApiRequest.shared.getMainData { (childrens, error)  in
            guard let data = childrens, error == nil else {
                if let err = error {
                    self.presentAlert(title: "Sorry!", error: err)
                } else {
                    self.presentAlert(title: "Sorry!", message: "something wrong")
                }
                return
            }
            SwiftSpinner.hide({
                let mainVC = MainViewController()
                mainVC.childrens = data
                self.present(PCNavigationController(rootViewController: mainVC), animated: true, completion: nil)
            })
        }
    }
    
}

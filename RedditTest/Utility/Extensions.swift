//
//  Extensions.swift
//  RedditTest
//
//  Created by Amir Daliri on 17.07.2019.
//  Copyright © 2019 AmirDaliri. All rights reserved.
//

import Foundation
import PieCrust
import UIKit

extension UIViewController {
    
    func updateUserInterface() {
        
        let vc = NetworkPopUpVC()
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .overCurrentContext
        
        switch Network.reachability.status {
            
        case .unreachable:
            SwiftSpinner.hide()
            present(vc, animated: true, completion: nil)
        case .wwan:
            SwiftSpinner.hide()
            present(vc, animated: true, completion: nil)
        case .wifi:
            vc.dismiss(animated: true, completion: nil)
        }
    }
    
    @objc func statusManager(_ notification: Notification) {
        updateUserInterface()
    }
}

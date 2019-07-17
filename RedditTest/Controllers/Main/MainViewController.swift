//
//  ViewController.swift
//  RedditTest
//
//  Created by Amir Daliri on 16.07.2019.
//  Copyright © 2019 AmirDaliri. All rights reserved.
//

import UIKit
import PieCrust

class MainViewController: PCViewController, Layouting {
    typealias View = MainViewModel

    var childrens = [Children]()

    // MARK: - Lifecycle Methods
    
    override func loadView() {
        view = View()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // I'm Here...
        print(childrens.count)
        pcView.tableView.dataSource = self
        pcView.tableView.delegate = self
        pcView.tableView.reloadData()
    }

    override func setNavigationItem() {
        self.title = "Main"
    }
    
    // MARK: - Device Oriention Methode
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        if UIDevice.current.orientation.isLandscape {
            pcView.remakeConstraintsForLandscape()
        } else {
            pcView.remakeConstraintsForPortrait()
        }
    }
}

//MARK: UITableViewDataSource UITableViewDelegate Methode

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return childrens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.identifier, for: indexPath) as! MainTableViewCell
        guard let data = childrens[indexPath.row].childrenData else { return cell }
        cell.config(data: data)
        return cell
    }

}

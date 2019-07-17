//
//  ViewModel.swift
//  RedditTest
//
//  Created by Amir Daliri on 17.07.2019.
//  Copyright © 2019 AmirDaliri. All rights reserved.
//

import UIKit
import SnapKit
import PieCrust

class MainViewModel: PCView {
    
    // MARK: - Property Methode
    
    lazy var tableView: PCTableView = {
        let table = PCTableView(style: .grouped, cells: [], separatorStyle: .none, backgroundColor: backgroundColor)
        table.register(MainTableViewCell.self, forCellReuseIdentifier: MainTableViewCell.identifier)
        table.estimatedRowHeight = 80
        table.rowHeight = UITableView.automaticDimension
        table.separatorStyle = .none
        return table
    }()
    
    // MARK: - Setup VIew Methode

    override func setupViews() {
        super.setupViews()
        
        addSubview(tableView)
    }
    
    // MARK: - Constraints Methode

    override func setupLayout() {
        super.setupLayout()
        
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

extension MainViewModel {
    
    func remakeConstraintsForLandscape() {
        tableView.snp.remakeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(preferredPadding*2)
            make.bottom.equalToSuperview()
        }
        animate()
    }
    
    func remakeConstraintsForPortrait() {
        tableView.snp.remakeConstraints { make in
            make.edges.equalToSuperview()
        }
        animate()
    }

    private func animate(){
        UIView.animate(withDuration: 0.3) { [weak self] in
            self?.layoutIfNeeded()
        }
    }
}

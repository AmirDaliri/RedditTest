//
//  MainTableViewCell.swift
//  RedditTest
//
//  Created by Amir Daliri on 17.07.2019.
//  Copyright © 2019 AmirDaliri. All rights reserved.
//

import UIKit
import PieCrust

class MainTableViewCell: PCTableViewCell {
    
    // MARK: - Property Methode

    lazy var titleLabel: PCLabel = {
        let lbl = PCLabel(text: .empty, textAlignment: .left, numberOfLines: 0, textColor: .black, font: UIFont.boldSystemFont(ofSize: 15), backgroundColor: .clear, tintColor: .clear)
        return lbl
    }()
    
    lazy var detailTextView: PCTextView = {
        let view = PCTextView(isScrollEnabled: false, isDirectionalLockEnabled: false, isPagingEnabled: false, scrollsToTop: false, bounces: false, alwaysBounceVertical: false, alwaysBounceHorizontal: false, backgroundColor: .clear)
        view.textColor = UIColor.darkGray
        view.font = UIFont.systemFont(ofSize: 12)
        view.isEditable = false
        view.isSelectable = true
        view.dataDetectorTypes = .link
        return view
    }()
    
    lazy var seprator: PCView = {
        return PCView(backgroundColor: UIColor.lightGray)
    }()
    
    // MARK: - Setup VIew Methode
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(titleLabel)
        addSubview(detailTextView)
        addSubview(seprator)
    }
    
    // MARK: - Constraints Methode
    
    override func setupLayout() {
        super.setupLayout()
        
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(8)
            make.leading.trailing.equalToSuperview().inset(preferredPadding)

        }
        
        detailTextView.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).inset(-preferredPadding)
            make.leading.trailing.equalToSuperview().inset(preferredPadding)
            make.bottom.equalToSuperview().inset(preferredPadding)
        }
        
        seprator.snp.makeConstraints { make in
            make.top.equalTo(detailTextView.snp.bottom).offset(8)
            make.leading.trailing.equalToSuperview().inset(preferredPadding*1.5)
            make.height.equalTo(0.5)
        }
    }

}

extension MainTableViewCell {
    
    static var identifier: String {
        return "MainTableViewCell"
    }
    
    func config(data: ChildrenData) {
        titleLabel.text = data.title
        detailTextView.text = data.selftext
    }
}

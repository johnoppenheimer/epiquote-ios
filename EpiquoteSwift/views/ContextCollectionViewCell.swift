//
//  ContextCollectionViewCell.swift
//  EpiquoteSwift
//
//  Created by Maxime Cattet on 17/11/2016.
//
//

import UIKit
import PureLayout

class ContextCollectionViewCell: UICollectionViewCell {
    lazy var textLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12.0)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.textColor = UIColor.darkGray
        self.contentView.addSubview(label)
        return label
    }()
    
    lazy var colorBlockView: UIView = {
        let view = UIView()
        self.contentView.addSubview(view)
        return view
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
                
        self.textLabel.autoPinEdge(toSuperviewEdge: .top, withInset: 5)
        self.textLabel.autoPinEdge(toSuperviewEdge: .bottom, withInset: 5)
        self.textLabel.autoPinEdge(toSuperviewEdge: .left, withInset: 10)
        self.textLabel.autoPinEdge(toSuperviewEdge: .right, withInset: 10)
        
        self.colorBlockView.autoPinEdge(toSuperviewEdge: .left)
        self.colorBlockView.autoPinEdge(toSuperviewEdge: .top)
        self.colorBlockView.autoPinEdge(toSuperviewEdge: .bottom)
        self.colorBlockView.autoSetDimension(.width, toSize: 5)
    }
}

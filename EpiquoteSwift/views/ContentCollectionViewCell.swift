//
//  ContentCollectionViewCell.swift
//  EpiquoteSwift
//
//  Created by Maxime Cattet on 17/11/2016.
//
//

import UIKit

class ContentCollectionViewCell: UICollectionViewCell {
    lazy var textView: UITextView = {
        let view = UITextView()
        view.backgroundColor = .clear
        view.isSelectable = false
        view.isEditable = false
        view.isScrollEnabled = false
        view.font = UIFont.systemFont(ofSize: 14.0)
        self.contentView.addSubview(view)
        return view
    }()
    
    lazy var colorBlockView: UIView = {
        let view = UIView()
        self.contentView.addSubview(view)
        return view
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.textView.autoPinEdge(toSuperviewEdge: .top, withInset: 5)
        self.textView.autoPinEdge(toSuperviewEdge: .left, withInset: 10)
        self.textView.autoPinEdge(toSuperviewEdge: .right, withInset: 10)
        self.textView.autoPinEdge(toSuperviewEdge: .bottom, withInset: 5)
        
        self.colorBlockView.autoPinEdge(toSuperviewEdge: .left)
        self.colorBlockView.autoPinEdge(toSuperviewEdge: .top)
        self.colorBlockView.autoPinEdge(toSuperviewEdge: .bottom)
        self.colorBlockView.autoSetDimension(.width, toSize: 5)
    }
}

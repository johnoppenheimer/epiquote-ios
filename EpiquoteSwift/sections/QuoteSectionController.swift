//
//  QuoteSectionController.swift
//  EpiquoteSwift
//
//  Created by Maxime Cattet on 17/11/2016.
//
//

import UIKit
import IGListKit

class QuoteSectionController: IGListSectionController, IGListSectionType {
    var quote: Quote?
    var color: UIColor = UIColor.random()
    
    func numberOfItems() -> Int {
        return 2
    }
    
    func sizeForItem(at index: Int) -> CGSize {
        let width = self.collectionContext!.containerSize.width
        
        switch index {
        case 0:
            let height = Utilities.textHeight(with: self.quote!.context!, width: width, font: UIFont.systemFont(ofSize: 12.0))
            return CGSize(width: width, height: height)
        default:
            let height: CGFloat = Utilities.textHeight(with: self.quote!.content, width: width, insets: UIEdgeInsetsMake(10, 15, 15, 10), font: UIFont.systemFont(ofSize: 14.0))
            return CGSize(width: width, height: height + 5)
        }
    }
    
    func cellForItem(at index: Int) -> UICollectionViewCell {
        if index == 0 {
            let cell = self.collectionContext?.dequeueReusableCell(of: ContextCollectionViewCell.self, for: self, at: index) as! ContextCollectionViewCell
            cell.textLabel.text = self.quote!.context
            cell.colorBlockView.backgroundColor = self.color
            return cell
        }
        else {
            let cell = self.collectionContext?.dequeueReusableCell(of: ContentCollectionViewCell.self, for: self, at: index) as! ContentCollectionViewCell
            cell.textView.text = self.quote!.content
            cell.colorBlockView.backgroundColor = self.color
            
            return cell
        }
        
    }
    
    func didUpdate(to object: Any) {
        self.quote = object as? Quote
    }
    
    func didSelectItem(at index: Int) {}
}

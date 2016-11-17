//
//  Utilities.swift
//  EpiquoteSwift
//
//  Created by Maxime Cattet on 17/11/2016.
//
//

import UIKit

class Utilities: NSObject {
    fileprivate static let _insets = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
    fileprivate static let _font = UIFont.systemFont(ofSize: UIFont.systemFontSize)
    
    static func textHeight(with text: String, width: CGFloat, insets: UIEdgeInsets = _insets, font: UIFont = _font) -> CGFloat {
        let constrainedSize = CGSize(width: width - insets.left - insets.right, height: CGFloat.greatestFiniteMagnitude)
        let attributes = [ NSFontAttributeName: font ]
        let options: NSStringDrawingOptions = [.usesFontLeading, .usesLineFragmentOrigin]
        let bounds = (text as NSString).boundingRect(with: constrainedSize, options: options, attributes: attributes, context: nil)
        return ceil(bounds.height) + insets.top + insets.bottom
    }
}


extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
extension UIColor {
    static func random() -> UIColor {
        return UIColor(red: .random(), green: .random(), blue: .random(), alpha: 1)
    }
}

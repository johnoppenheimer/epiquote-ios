//
//  Quote.swift
//  EpiquoteSwift
//
//  Created by Maxime Cattet on 17/11/2016.
//
//

import UIKit
import IGListKit

class Quote: NSObject {
    var author: String = ""
    var context: String?
    var content: String = ""
    var date: Date = Date()
    
    init(author: String, context: String?, content: String, date: Date) {
        self.author = author
        self.content = content
        self.context = context
        self.date = date
    }
}

//
//  SingleLinkNode.swift
//  DataStructuresAndAlgorithmsInSwift
//
//  Created by Ravi Rathore on 12/30/15.
//  Copyright © 2015 Banago labs. All rights reserved.
//

import Foundation
class SingleLinkNode {
     var info : Int
    var next : SingleLinkNode?
    init(info:Int , next : SingleLinkNode? = nil)
    {
        self.info = info
        self.next = next
    }
}

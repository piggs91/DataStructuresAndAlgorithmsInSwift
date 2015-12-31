//
//  SingleNodeGeneric.swift
//  DataStructuresAndAlgorithmsInSwift
//
//  Created by Ravi Rathore on 12/31/15.
//  Copyright © 2015 Banago labs. All rights reserved.
//

import Foundation

class SingleNodeGeneric<T : Equatable> {
    
    var info : T
    var next : SingleNodeGeneric?
    init(info: T,next : SingleNodeGeneric? = nil)
    {
        self.info = info
        self.next = next
    }
}
// MARK: Equatable



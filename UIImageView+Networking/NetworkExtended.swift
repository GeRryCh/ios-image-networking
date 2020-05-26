//
//  NetworkExtended.swift
//  Example
//
//  Created by German Velibekov on 26/05/2020.
//  Copyright © 2020 german. All rights reserved.
//

import Foundation

public struct NetworkExtension<ExtendedType> {
    private(set) var type: ExtendedType
    
    init(_ type: ExtendedType) {
        self.type = type
    }
}

public protocol NetworkExtended {
    associatedtype ExtendedType
    
    static var nw: NetworkExtension<ExtendedType>.Type { get set }
    var nw: NetworkExtension<ExtendedType> { get set }
}


public extension NetworkExtended {
    static var nw: NetworkExtension<Self>.Type {
        get { NetworkExtension<Self>.self }
        set {}
    }
    
    var nw: NetworkExtension<Self> {
        get { NetworkExtension(self) }
        set {}
    }
}

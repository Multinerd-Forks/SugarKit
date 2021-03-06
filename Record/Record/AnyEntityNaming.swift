//
//  AnyEntity.swift
//  Bolts
//
//  Created by Maksim Kolesnik on 20.04.2018.
//

import CoreData

public struct AnyEntityNaming: EntityNaming {

    public var entityName: String {
        return NSStringFromClass(self.objectType).components(separatedBy: ".").last!
    }
    
    public let objectType: NSObject.Type
    public init(_ object: NSObject) {
        self.objectType = type(of: object)
    }
    
    public init(_ objectType: NSObject.Type) {
        self.objectType = objectType
    }
}

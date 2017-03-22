//
//  Item.swift
//  HomePwner
//
//  Created by Mingyu Fan on 3/7/17.
//  Copyright © 2017 Mingyu Fan. All rights reserved.
//

import UIKit

class Item: NSObject {
    var name: String
    var valueInDollars: Int
    var serialNumber: String?
    let dateCreated: Date
    let itemKey: String
    
    init(name: String, serialNumber: String?, valueInDollar: Int) {
        self.name = name
        self.valueInDollars = valueInDollar
        self.serialNumber = serialNumber
        self.dateCreated = Date()
        self.itemKey = UUID().uuidString
        super.init()
    }
    
    convenience init(random: Bool = false) {
        if random{
            let adjectives = ["Fluffy", "Rusty", "Shiny"]
            let nouns = ["Bear", "Spork", "Mac"]
            
            var idx = arc4random_uniform(UInt32(adjectives.count))
            let randomAdjective = nouns[Int(idx)]
            
            idx = arc4random_uniform(UInt32(nouns.count))
            let randomNoun = nouns[Int(idx)]
            
            let randomName = "\(randomAdjective) \(randomNoun)"
            let randomValue = Int(arc4random_uniform(100))
            let randomSerialNumber = UUID().uuidString.components(separatedBy: "-").first!
            
            self.init(name:randomName, serialNumber: randomSerialNumber, valueInDollar: randomValue)
            
        }
        else {
            self.init(name: "", serialNumber: nil, valueInDollar: 0)
        }
        
        
    }
}

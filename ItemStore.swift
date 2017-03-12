//
//  ItemStore.swift
//  HomePwner
//
//  Created by Mingyu Fan on 3/7/17.
//  Copyright © 2017 Mingyu Fan. All rights reserved.
//

import UIKit

class ItemStore {
    var allItems = [Item]()
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }
    
    init() {
        for _ in 0..<5{
            createItem()
        }
    }
}

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
    
    func removeItem(_ item: Item) {
        if let index = allItems.index(of: item) {
            allItems.remove(at: index)
        }
    }
    
    func moreItem(_ fromIndex: Int, to toIndex: Int)
    {
        if fromIndex==toIndex {return}
        let reomvedItem = allItems[fromIndex]
        allItems.remove(at: fromIndex)
        allItems.insert(reomvedItem, at: toIndex)
        
    }
    //init() {
     //   for _ in 0..<5{
      //      createItem()
      //  }
    //}
}

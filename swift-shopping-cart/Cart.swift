//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by Flatiron School on 7/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
class Cart {
    var items = [Item]()
    
    
    
    func totalPriceInCents() -> Int {
        var cost: Int = 0
        for item in items{
        cost = cost + item.priceInCents
        }
        return cost
    }
    
    func addItem(item:Item){
    items.append(item)
    }
    
    func removeItem(item:Item){
        if items.contains(item){
            let temp = items.indexOf(item)
            items.removeAtIndex(temp!)
        }
        
    }
    
    func itemsWithName(name:String)-> [Item]{
        var result = [Item]()
        
        for item in items{
            if item.name == name{
            result.append(item)
            }
        }
     return result
    }
    
    
    func itemsWithMinimumPriceInCents(arg: Int)-> [Item]{
    var result = [Item]()
        for item in items{
            if item.priceInCents >= arg{
            result.append(item)
            }
        }
        
        
        return result
    }
    
    
    func itemsWithMaximumPriceInCents(arg: Int) -> [Item] {
        var result = [Item]()
        for item in items{
            if item.priceInCents <= arg{
                result.append(item)
            }
        }
        
        
        return result
    }
    
    
    
    
    
    
    
    
    
    
}
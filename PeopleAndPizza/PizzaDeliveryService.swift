//
//  PizzaDeliveryService.swift
//  PeopleAndPizza
//
//  Created by Benjamin Su on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class PizzaDeliveryService {
    var location : Coordinate
    var pizzasAvailable : Int
    
    init(location: Coordinate) {
        self.location = location
        pizzasAvailable = 10
    }
    
    func isInRange(destination: Coordinate) -> Bool{
        if location.distanceTo(coordinate: destination) < 5000 {
            return true
        } else {
            return false
        }
    }
    
    func deliverPizzaTo(destination: Coordinate) -> Bool {
        if self.isInRange(destination: destination) {
            pizzasAvailable -= 1
            return true
        } else {
            return false
        }
    }
    
    
    
}


























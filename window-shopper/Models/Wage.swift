//
//  Wage.swift
//  window-shopper
//
//  Created by Jerry Lai on 2021-01-25.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(wage: Double, price: Double)->Int{
        return Int(ceil(price/wage))
    }
}

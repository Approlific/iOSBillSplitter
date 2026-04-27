//
//  Bill.swift
//  BillSplitter
//
//  Created by Jerry Toland on 4/27/26.
//

import Foundation

struct Bill {
    var totalAmount: Double
    var numberOfPeople: Int
    var tipPercent: Double
    
    var tipAmount: Double {
        return totalAmount * (tipPercent / 100)
    }
    
    var grandTotal: Double {
        return totalAmount + tipAmount
    }
    
    var perPerson: Double {
        return grandTotal / Double(numberOfPeople)
    }
}

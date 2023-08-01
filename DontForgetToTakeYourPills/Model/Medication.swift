//
//  Medication.swift
//  DontForgetToTakeYourPills
//
//  Created by Maria on 20.07.2023.
//

import Foundation

struct Medication: Equatable, Identifiable {
    var name: String
    var suppliesCount: Int
    var takenPerDayCount: Int
    

    var id: String { name }
    
    mutating func takeOnePill() {
        suppliesCount -= 1
    }
    
    mutating func addOnePill() {
        suppliesCount += 1
    }
}

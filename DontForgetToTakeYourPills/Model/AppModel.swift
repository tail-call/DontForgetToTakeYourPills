//
//  AppModel.swift
//  DontForgetToTakeYourPills
//
//  Created by Maria on 20.07.2023.
//

import Foundation

struct AppModel {
    var medications: [Medication] = [
        .init(
            name: "Pregabalin",
            suppliesCount: 100,
            takenPerDayCount: 6
        ),
        .init(
            name: "Cyproterone acetate",
            suppliesCount: 50,
            takenPerDayCount: 1
        )
    ]
}

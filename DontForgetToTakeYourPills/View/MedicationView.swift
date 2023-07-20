//
//  MedicationView.swift
//  DontForgetToTakeYourPills
//
//  Created by Maria on 20.07.2023.
//

import SwiftUI

struct MedicationView: View {
    @Binding var model: Medication
    
    var body: some View {
        HStack {
            Text("\(model.name), take \(model.takenPerDayCount) per day, in store: \(model.suppliesCount) pcs.")
            Spacer()
            Button("Take") {
                model.takeOnePill()
            }
            // XXX: this won't work
//            Button("Add") {
//                model.addOnePill()
//            }
        }
    }
}

struct MedicationView_Previews: PreviewProvider {
    static var medication = Medication(
        name: "Acephen",
        suppliesCount: 100,
        takenPerDayCount: 4
    )
    
    static var previews: some View {
        MedicationView(model: Binding(
            get: {
                return Self.medication
            },
            set: { newValue in
                Self.medication = newValue
            }
        ))
    }
}

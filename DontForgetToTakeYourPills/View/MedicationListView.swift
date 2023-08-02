//
//  MedicationListView.swift
//  DontForgetToTakeYourPills
//
//  Created by Maria on 20.07.2023.
//

import SwiftUI

struct MedicationListView: View {
    @Binding var model: AppModel
    
    var body: some View {
        NavigationView {
            VStack {
                List($model.medications, id: \.id) { medication in
                    NavigationLink {
                        Text("Not implemented yet")
                            .navigationTitle("Edit medication")
                    } label: {
                        MedicationView(model: medication)
                    }
                }
            }
            .navigationTitle("Supplies")
            .toolbar {
                Button("Add") {
                    model.createNewMedication()
                }
            }
        }
    }
}

struct MedicationListView_Previews: PreviewProvider {
    static var model = AppModel(medications: [
        Medication(name: "Alpha", suppliesCount: 33, takenPerDayCount: 44)
    ])
    static var previews: some View {
        MedicationListView(model: Binding(get: { model }, set: { model = $0 }))
    }
}

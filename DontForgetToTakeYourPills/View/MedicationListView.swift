//
//  MedicationListView.swift
//  DontForgetToTakeYourPills
//
//  Created by Maria on 20.07.2023.
//

import SwiftUI

struct MedicationListView: View {
    @State private var model = AppModel()
    
    var body: some View {
        VStack {
            List($model.medications, id: \.id) { medication in
                MedicationView(model: medication)
            }
        }
        .navigationTitle("Supplies")
    }
}

struct MedicationListView_Previews: PreviewProvider {
    static var previews: some View {
        MedicationListView()
    }
}

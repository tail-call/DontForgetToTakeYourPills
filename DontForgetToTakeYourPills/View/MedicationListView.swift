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
            VStack(alignment: .leading) {
                HStack {
                    AppIcon()
                        .frame(width: 64, height: 64)
                    Text("Don't forget to take your pills")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                }

                Spacer()
                    .frame(height: 50)

                Text("Pills are good for your health")
                    .font(.title)
            }
            .padding()
            
            List($model.medications, id: \.id) { medication in
                MedicationView(model: medication)
            }
        }
    }
}

struct MedicationListView_Previews: PreviewProvider {
    static var previews: some View {
        MedicationListView()
    }
}

//
//  ContentView.swift
//  DontForgetToTakeYourPills
//
//  Created by Maria on 20.07.2023.
//

import SwiftUI

struct ContentModel {
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

struct ContentView: View {
    @State private var model = ContentModel()
    
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
            
            ForEach($model.medications) { medication in
                HStack {
                    let m = medication.wrappedValue
                    Text("\(m.name), take \(m.takenPerDayCount) per day, in store: \(m.suppliesCount) pcs.")
                    Spacer()
                    Button("Take one") {
                        medication.wrappedValue.takeOnePill()
                    }
                }
                .padding()
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  DontForgetToTakeYourPills
//
//  Created by Maria on 20.07.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var medications: [Medication] = [
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
            
            ForEach($medications) { medication in
                HStack {
                    let m = medication.wrappedValue
                    Text("\(m.name), take \(m.takenPerDayCount) per day, in store: \(m.suppliesCount) pcs.")
                    Spacer()
                    Button("Take one") {
                        if let index = medications.firstIndex(where: {
                            medication.wrappedValue == $0
                        }) {
                            medications[index].suppliesCount -= 1
                        }
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

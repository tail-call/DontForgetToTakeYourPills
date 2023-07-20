//
//  ContentView.swift
//  DontForgetToTakeYourPills
//
//  Created by Maria on 20.07.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        AppIcon()
                            .frame(width: 64, height: 64)
                        Text("Don't forget to take your pills")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                    }
                }
                .padding()

                Spacer()

                NavigationLink {
                    MedicationListView()
                } label: {
                    Text("Supplies")
                        .font(.largeTitle)
                }
                
                Spacer()
                    .frame(height: 50)
                
                NavigationLink {
                    Text("Not implemented yet")
                } label: {
                    Text("Calender")
                        .font(.largeTitle)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

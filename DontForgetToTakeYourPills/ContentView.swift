//
//  ContentView.swift
//  DontForgetToTakeYourPills
//
//  Created by Maria on 20.07.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var pillsTakenCount = 0
    
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
                
                Text("You took \(pillsTakenCount) pills")
                
                Button("Take one more") {
                    pillsTakenCount += 1
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

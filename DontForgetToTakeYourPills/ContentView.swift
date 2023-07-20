//
//  ContentView.swift
//  DontForgetToTakeYourPills
//
//  Created by Maria on 20.07.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Don't forget to take your pills")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                Spacer()
                    .frame(height: 50)

                Text("Pills are good for your health")
                    .font(.title)
                
                HStack() {
                    Text("Pills")
                    Spacer()
                    Text("=")
                    Spacer()
                    Text("Good")
                }
                .padding(8.0)
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

//
//  InfoView.swift
//  DontForgetToTakeYourPills
//
//  Created by Maria on 01.08.2023.
//

import SwiftUI

struct InfoView: View {
    @State private var opacity = 0.0
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                AppIcon()
                    .frame(width: 64, height: 64)
                Text("Don't forget to take your pills")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
            }
            ScrollView {
                Text("General information")
                    .font(.system(.title))

                Text("  Thy pills are thy life. Thy well-being depends on these small pellets that contain the wondrous mixture of substances so arcane that people spend years to study them in the medical colleges.")
                Text("  I offer thee a challenge. Thou shalt not skip your medication. With this app, thou shall conquer this challenge. I grant thee the power of medication tracking.")
                Text("  This great power shall aid thee in never skipping your medications.")
            }
        }
        .padding(10)
        .opacity(opacity)
        .onAppear {
            withAnimation {
                opacity = 1
            }
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

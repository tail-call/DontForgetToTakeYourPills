//
//  InfoView.swift
//  DontForgetToTakeYourPills
//
//  Created by Maria on 01.08.2023.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                AppIcon()
                    .frame(width: 64, height: 64)
                Text("Don't forget to take your pills")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
            }
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

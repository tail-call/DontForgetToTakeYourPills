//
//  AppTab.swift
//  DontForgetToTakeYourPills
//
//  Created by Maria on 02.08.2023.
//

import SwiftUI

struct AppTab<Content: View>: View {
    var content: () -> Content
    
    /// Tab's title
    let title: String
    /// SF Symbol image name
    let imageName: String
    
    init(
        title: String,
        imageName: String,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.title = title
        self.imageName = imageName
        self.content = content
    }
    
    var body: some View {
        content()
            .tag(title)
            .tabItem {
                Label(title: {
                    Text(title)
                }, icon: {
                    Image(systemName: imageName)
                })
            }
    }
    
}

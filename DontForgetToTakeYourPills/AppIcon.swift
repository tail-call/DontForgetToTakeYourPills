//
//  AppIcon.swift
//  DontForgetToTakeYourPills
//
//  Created by Maria on 20.07.2023.
//

import SwiftUI

struct AppIcon: View {
    var body: some View {
        Image(uiImage: Asset.appIcon)
            .resizable(resizingMode: .stretch)
            .clipShape(
                RoundedRectangle(
                    cornerSize: CGSize(width: 20, height: 0),
                    style: .continuous
                )
            )
            .shadow(radius: 2, x: 2, y: 2)
    }
}

//
//  CalendarView.swift
//  DontForgetToTakeYourPills
//
//  Created by Maria on 02.08.2023.
//

import SwiftUI

struct CalendarView: View {
    var body: some View {
        VStack {
            Text("Calendar")
                .font(.largeTitle)
            ScrollView {
                ForEach(0 ..< 12) { item in
                    HStack {
                        Text("Mockday")
                        Spacer()
                    }
                    .frame(
                        maxWidth: .infinity,
                        minHeight: 70
                    )
                    .border(.black)
                }
            }
            
        }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}

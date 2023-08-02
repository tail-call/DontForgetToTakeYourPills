//
//  ContentView.swift
//  DontForgetToTakeYourPills
//
//  Created by Maria on 20.07.2023.
//

import SwiftUI

struct ContentView: View {
    @State var model = AppModel()
    @State private var selection = "Calendar"
    
    var body: some View {
        TabView(selection: $selection) {
            AppTab(
                title: "Calendar",
                imageName: "calendar"
            ) { CalendarView() }
            
            AppTab(
                title: "Supplies",
                imageName: "cube.box"
            ) { MedicationListView(model: $model) }
            
            AppTab(
                title: "Info",
                imageName: "info.circle"
            ) { InfoView() }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  DontForgetToTakeYourPills
//
//  Created by Maria on 20.07.2023.
//

import SwiftUI

struct ContentView: View {
    @State var model = AppModel()
    @State private var selection: Tab = .calendar
    
    enum Tab {
        case calendar
        case supplies
        case info
    }
    
    var body: some View {
        VStack {
            TabView(selection: $selection) {
                Text("Not implemented yet")
                    .tag(Tab.supplies)
                    .tabItem {
                        Label(title: {
                            Text("Calendar")
                        }, icon: {
                            Image(systemName: "calendar")
                        })
                    }
                
                MedicationListView(model: $model)
                    .tag(Tab.calendar)
                    .tabItem {
                        Label(title: {
                            Text("Supplies")
                        }, icon: {
                            Image(systemName: "cube.box")
                        })
                    }
                
                InfoView()
                    .tag(Tab.info)
                    .tabItem {
                        Label(title: {
                            Text("Info")
                        }, icon: {
                            Image(systemName: "info.circle")
                        })
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

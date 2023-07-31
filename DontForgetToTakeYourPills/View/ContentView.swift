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
    }
    
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

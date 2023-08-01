//
//  MedicationView.swift
//  DontForgetToTakeYourPills
//
//  Created by Maria on 20.07.2023.
//

import SwiftUI

fileprivate let iconDimension: CGFloat = 40

struct MedicationView: View {
    @Binding var model: Medication
    
    var body: some View {
        HStack {
            GeometryReader { geometry in
                ZStack {
                    Color.white
                        .cornerRadius(geometry.size.width / 3)
                        .shadow(radius: 2, x: 1, y: 1)

                    Path { path in
                        path.addRoundedRect(
                            in: CGRect(x: 0, y: 0,
                                       width: 0.5, height: 1),
                            cornerSize: CGSize(width: 0.5, height: 0.5)
                        )
                    }
                    .transform(.init(
                        translationX: 0.25,
                        y: 0.0
                    ))
                    .transform(.init(
                        scaleX: geometry.size.width,
                        y: geometry.size.height
                    ))
                    .rotation(Angle(degrees: 45))
                    .fill(.orange)
                }
            }
            .frame(width: iconDimension, height: iconDimension)
            
            VStack(alignment: .leading) {
                Text("\(model.name)")
                    .fontWeight(.bold)
                Text("\(model.suppliesCount) pcs. in store")
                    .font(.system(size: 12))
                Text("Take \(model.takenPerDayCount) per day")
                    .font(.system(size: 12))
            }
        }
    }
}

struct MedicationView_Previews: PreviewProvider {
    static var medication = Medication(
        name: "Acephen",
        suppliesCount: 100,
        takenPerDayCount: 4
    )
    
    static var previews: some View {
        MedicationView(model: Binding(
            get: {
                return Self.medication
            },
            set: { newValue in
                Self.medication = newValue
            }
        ))
    }
}

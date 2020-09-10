//
//  GeometryExample.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 10/09/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

@available(iOS 14.0, *)
struct GeometryExample: View {

    @AppStorage("appText") var appFirstText = "100 Days"
    @SceneStorage("appSecondText") var appSecondText = "Swift UI"

    var body: some View {
        VStack {

            HStack {
                Text("\(appFirstText)")
                    .foregroundColor(.black).font(.title).padding(15)
                    .background(RoundedViews(viewColor: .orange, leftRadius: 30, backLength: 30))

                Text("\(appSecondText)")
                    .foregroundColor(.black).font(.title).padding(15)
                    .background(RoundedViews(viewColor: .blue, leftLength: 30,  backRight: 30))


            }.padding(20).border(Color.gray).shadow(radius: 3)

            AlertView()

        }
    }
}

struct GemoetryExample_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 14.0, *) {
            GeometryExample()
        } else {
            // Fallback on earlier versions
        }
    }
}

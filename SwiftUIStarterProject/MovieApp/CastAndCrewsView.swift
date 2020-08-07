//
//  CastAndCrewsView.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 07/08/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

struct CastAndCrewsView: View {
    let castAndCrews: [CastAndCrewModel]

    var body: some View {
        VStack(alignment: .leading) {
            Text("Cast and Crew")
                .padding(.all)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 10) {
                    ForEach(castAndCrews) { castAndCrew in
                        CastCrewHolderView(castAndCrew: castAndCrew)
                    }
                }
            }
        }
    }
}

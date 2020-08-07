//
//  CastAndCrewModel.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 07/08/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

struct CastCrewHolderView: View {

    var castAndCrew: CastAndCrew

    var body: some View {
        
        return VStack(spacing: 3) {
            Image(castAndCrew.name)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .cornerRadius(40)
            Text(castAndCrew.name)
                .frame(width: 100)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
            Text(castAndCrew.designation)
                .font(.subheadline)
                .frame(width: 100)
                .foregroundColor(.secondary)
        }
    }
}

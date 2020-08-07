//
//  MovieSpecification.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 07/08/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

//
struct MovieSpecification: View {

    var description: String
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Plot Summary")
            Text(description)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .fixedSize(horizontal: false, vertical: true)
        }
        .padding(.all)
    }
}

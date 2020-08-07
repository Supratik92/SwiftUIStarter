//
//  RatingView.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 07/08/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//
import SwiftUI

// Rating View
struct RatingView: View {
    var body: some View {
        VStack() {
            Image(systemName: "star.fill")
            Text("8.5 / 10")
            Text("913869")
                .font(.subheadline)
                .foregroundColor(.secondary
            )
        }.padding(.all)
    }
}

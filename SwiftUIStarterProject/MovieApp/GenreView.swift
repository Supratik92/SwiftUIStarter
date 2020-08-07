//
//  GenreView.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 07/08/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

struct GenreView: View {
    var body: some View {
        return HStack(spacing: 15) {
            Button(action: didTapOnGenre) {
                Text("Animation")
                    .padding([.leading,.trailing], 20)
                    .padding([.top,.bottom], 5)
                    .overlay(
                        Capsule(style: .continuous)
                            .stroke(Color.gray, lineWidth: 1)
                )
            }.accentColor(.black)
            Button(action: didTapOnGenre) {
                Text("Adventure")
                    .padding([.leading,.trailing], 20)
                    .padding([.top,.bottom], 5)
                    .overlay(
                        Capsule(style: .continuous)
                            .stroke(Color.gray, lineWidth: 1)
                )
            }.accentColor(.black)
            Button(action: didTapOnGenre) {
                Text("Drama")
                    .padding([.leading,.trailing], 20)
                    .padding([.top,.bottom], 5)
                    .overlay(
                        Capsule(style: .continuous)
                            .stroke(Color.gray, lineWidth: 1)
                )
            }.accentColor(.black)
        }.padding([.top], 10)
    }

   private func didTapOnGenre() {
        // To be added later
    }
}

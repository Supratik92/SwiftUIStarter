//
//  NameAndGenreView.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 07/08/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

struct NameAndGenreView: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(alignment: .leading, spacing: 5) {
                Text("The Lion King")
                    .font(.title)
                MovieSubDetailView()
                GenreView()
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
            .padding()

            Button(action: plusMethod) {
                Text("+")
                    .padding(.all)
                    .font(.title)
            }
            .accentColor(.white)
            .background(Color.gray)
            .cornerRadius(20)
        }.padding([.trailing,.top], 20)
    }

    func plusMethod() {

    }
}

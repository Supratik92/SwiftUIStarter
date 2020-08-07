//
//  ContentView.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 03/07/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State var title: String
    @State var font: Font = .largeTitle

    var body: some View {
        Text(title)
            .padding()
            .background(Color.gray)
            .foregroundColor(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            .border(Color.white, width: 2)
            .font(font)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(title: "Welcome to Swift UI")
    }
}

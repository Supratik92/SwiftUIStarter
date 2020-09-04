//
//  Picker.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 02/09/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

/// A view to hold form and picker
struct FormAndPicker: View {

    var movieGenre = ["Mystery", "Comedy", "Thriller", "Drama", "Fantasy", "Sci-Fi"]
    @State private var selectedMovieGenre = 0
    @State private var selectedDate = Date()

    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker(selection: $selectedMovieGenre, label: Text("Select your favourite movie genre")) {
                        ForEach(0..<movieGenre.count) {
                            Text(self.movieGenre[$0])
                        }
                    }
                }

                Section {
                    DatePicker("Please select Date here", selection: $selectedDate, displayedComponents: .date)
                }
            }
            .navigationBarTitle(Text("Pickers"))
        }
    }
}

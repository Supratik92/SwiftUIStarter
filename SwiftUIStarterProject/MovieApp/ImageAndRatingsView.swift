//
//  ImageAndRatingsView.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 07/08/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

/// Movie Image and Ratings view combined
struct ImageAndRatingsView: View {
    var image: String

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            MovieImageView(image: image)
            MovieRatingsView()
        }

    }
}

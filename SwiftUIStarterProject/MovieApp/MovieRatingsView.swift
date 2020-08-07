//
//  MovieRatingsView.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 07/08/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

enum MovieRatings: CaseIterable, Identifiable {
    var id: MovieRatings { self }
    case ratings
    case rateThis
    case metasscore
}

/// View for Movie Ratings
struct MovieRatingsView: View {
    var body: some View {
        return HStack {
            Spacer(minLength: 30)
            HStack(alignment: .center, spacing: 20) {
                ForEach(MovieRatings.allCases, id: \.self) { movieRating in
                    self.movieRatingViewType(type: movieRating)
                }
            }
            .padding(.leading, 30)
            .background(Color.white)
            .cornerRadius(radius: 30, corners: [.bottomLeft, .topLeft])
            .shadow(radius: 5)
        }
    }

    func movieRatingViewType(type: MovieRatings) -> some View {
         return RatingView()
    }
}

//
//  MovieBaseView.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 07/08/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

enum MoviewDetailViews: CaseIterable, Identifiable {

    var id: MoviewDetailViews { self }

    case imageAndRatings
    case nameAndGenre
    case description
    case castAndCrews
}

struct MovieBaseView: View {

    let movie: Movie = movieData
    @Environment(\.presentationMode) var presentation

    var body: some View {
        ZStack(alignment: .topLeading) {
            ScrollView {
                ForEach(MoviewDetailViews.allCases, id: \.self) { movieDetail in
                    self.movieDetailViewType(viewType: movieDetail)
                }
            }
            .edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
            .navigationBarTitle("")

            Button(action: {
                self.presentation.wrappedValue.dismiss()
            }) {
                Image("back")
            }.accentColor(.black)
        }
    }

    func movieDetailViewType(viewType: MoviewDetailViews) -> some View {
        switch viewType {
        case .imageAndRatings:
            return AnyView(ImageAndRatingsView(image: movie.image))
        case .nameAndGenre:
            return AnyView(NameAndGenreView())
        case .description:
            return AnyView(MovieSpecification(description: movie.description))
        case .castAndCrews:
            return AnyView(CastAndCrewsView(castAndCrews: movie.castAndCrews))
        }
    }
}

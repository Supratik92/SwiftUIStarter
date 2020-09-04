//
//  MovieDataObservable.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 04/09/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import Foundation
import Combine

class MovieDataObservable: ObservableObject {

    /// Cancellable object
    private var cancellable: AnyCancellable?

    var movieResponse = [MoviePopluarity]() { 
        didSet {
            self.objectWillChange.send()
        }
    }

    init() {
        getMovieDetails()
    }

    func getMovieDetails() {
        cancellable = DataFetcher.request(relativePath: .popularMovies)
            .mapError({ (error) -> Error in
            return error
        })
            .sink(receiveCompletion: { (_) in},
                  receiveValue: { [weak self] (movieModal) in
                    self?.movieResponse = movieModal.results
            })
    }
}

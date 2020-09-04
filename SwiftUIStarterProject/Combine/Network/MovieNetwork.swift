//
//  MovieNetwork.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 02/09/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import Foundation
import Combine

struct MovieApi {
    static let baseUrl = URL(string: "https://api.themoviedb.org/3/")
    static let imageFetchBaseUrl = "https://image.tmdb.org/t/p/w500"
}

enum RelativeAPiPath: String {
    case popularMovies = "movie/popular"
}

struct NetworkManager {


    struct Response<T> {
        let value: T
        let response: URLResponse
    }

    func fetchData<T: Decodable>(_ urlRequest: URLRequest) -> AnyPublisher<Response<T>, Error> {
        return URLSession.shared.dataTaskPublisher(for: urlRequest)
                .tryMap { result -> Response<T> in
                    let value = try JSONDecoder().decode(T.self, from: result.data)
                    return Response(value: value, response: result.response)
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}

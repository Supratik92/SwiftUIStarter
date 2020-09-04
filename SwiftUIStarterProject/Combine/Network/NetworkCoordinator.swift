//
//  NetworkCoordinator.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 04/09/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import Foundation
import Combine

class DataFetcher {

    class func request(relativePath: RelativeAPiPath) -> AnyPublisher<MovieModal, Error> {

        guard let baseUrl = MovieApi.baseUrl,
            var urlCompenents = URLComponents(url:baseUrl.appendingPathComponent(relativePath.rawValue), resolvingAgainstBaseURL: true) else {
            fatalError("Some thing went wrong")
        }
        /// Personal API Key removed, Add your's to proceed
        urlCompenents.queryItems = [URLQueryItem(name: "api_key", value: "Set API Key")]

        guard let networkUrl = urlCompenents.url else {
            fatalError("URl incorrect")
        }

        let networkManager = NetworkManager()

        return networkManager.fetchData(URLRequest(url: networkUrl)).map(\.value).eraseToAnyPublisher()
    }
}

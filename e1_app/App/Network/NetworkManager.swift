//
//  NetworkManager.swift
//  e1_app
//
//  Created by Антон Адамсон on 24.03.2024.
//

import Foundation
import Combine

class NetworkManager {
    func fetchData() -> AnyPublisher<Data, Error> {
        guard let url = URL(string: "your_api_url_here") else {
            fatalError("Invalid URL")
        }
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .tryMap { data, response in
                guard let httpResponse = response as? HTTPURLResponse,
                      httpResponse.statusCode == 200 else {
                    throw URLError(.badServerResponse)
                }
                return data
            }
            .mapError { $0 as Error }
            .eraseToAnyPublisher()
    }
}


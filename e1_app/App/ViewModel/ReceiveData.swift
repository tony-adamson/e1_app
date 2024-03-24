//
//  ReceiveData.swift
//  e1_app
//
//  Created by Антон Адамсон on 24.03.2024.
//

import Combine

class ReceiveData: ObservableObject {
    private let networkManager = NetworkManager()
    private var cancellables = Set<AnyCancellable>()
    
    func fetchData() {
        networkManager.fetchData()
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    print("Data fetching completed.")
                case .failure(let error):
                    print("Error: \(error)")
                }
            }, receiveValue: { data in
                // Обработка полученных данных здесь
                print("Received data: \(data)")
            })
            .store(in: &cancellables)
    }
}

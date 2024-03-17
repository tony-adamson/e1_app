//
//  e1_appApp.swift
//  e1_app
//
//  Created by Антон Адамсон on 16.03.2024.
//

import SwiftUI

@main
struct E1App: App {
    
    @StateObject var viewModel = AuthViewModel() // Создаем экземпляр ViewModel для управления состоянием авторизации
    
    var body: some Scene {
        WindowGroup {
            if viewModel.isAuthenticated {
                ContentView()
                    .background(Color.Black)
            } else {
                LoginView(viewModel: viewModel)
                    .background(Color.Black)
            }
        }
    }
}

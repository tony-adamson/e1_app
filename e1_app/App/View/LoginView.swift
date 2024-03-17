//
//  LoginView.swift
//  e1_app
//
//  Created by Антон Адамсон on 16.03.2024.
//

import SwiftUI

class AuthViewModel: ObservableObject {
    @Published var isAuthenticated = false
    
    // Здесь вы можете добавить логику для проверки состояния авторизации, например, через UserDefaults или проверку токена доступа
        
    func login() {
        // Здесь должна быть логика входа пользователя
        isAuthenticated = true
    }
}

struct LoginView: View {
    @ObservedObject var viewModel: AuthViewModel
    @State private var passwordText = ""
    
    var body: some View {
        VStack {
            Text("Вход в личный кабинет")
                .font(.custom("SFProDisplay-Semibold", size: 20))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            WorkerLoginView(viewModel: AuthViewModel())
            .padding(.top, 110)
            
            
            EmployerLoginView()
            .padding(.top, 18)
            
            Spacer()
        }
        .padding(.horizontal, 16)
        .background(Color.blue)
    }
}


#Preview {
    LoginView(viewModel: AuthViewModel())
}

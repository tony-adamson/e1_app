//
//  WorkerLoginView.swift
//  e1_app
//
//  Created by Антон Адамсон on 17.03.2024.
//

import SwiftUI

struct WorkerLoginView: View {
    @ObservedObject var viewModel: AuthViewModel
    @State private var passwordText = ""
    
    var body: some View {
        VStack() {
            VStack(alignment: .leading) {
                Text("Поиск работы")
                    .font(.custom("SFProDisplay-Medium", size: 16))
                    .foregroundColor(Color.White)
                    .padding(.top, 24)
                ZStack {
                    TextField("Электронная почта или телефон", text: .constant(""))
                        .frame(height: 40)
                        .textFieldStyle(.roundedBorder)
                        .padding(.top, 16)
                       
                    HStack {
                        if passwordText.isEmpty {
                            Image("responses")
                        }
                        Spacer()
                    }
                        .padding(.leading, 8)
                }
                .frame(height: 40)
            }
            .padding(.horizontal, 16)
            
            HStack {
                Button(action: {
                    // Добавьте здесь логику входа
                    viewModel.login()
                }) {
                    Text("Продолжить")
                        .font(.custom("SFProDisplay-Regular", size: 14))
                        .foregroundColor(Color.White)
                }
                .frame(width: 167, height: 40)
                .background(Color.Blue)
                .cornerRadius(8)
                
                Spacer()
                
                Button(action: {
                    // Добавьте здесь логику входа
                    viewModel.login()
                }) {
                    Text("Войти с паролем")
                        .font(.custom("SFProDisplay-Regular", size: 14))
                        .foregroundColor(Color.Blue)
                }
                .frame(width: 130, height: 40)
                .background(Color.Gray1)
                .cornerRadius(8)
            }
            .padding(.bottom, 56)
            .padding([.top, .horizontal], 16)
        }
        .background(Color.Gray1)
        .clipShape(.rect(cornerRadius: 15))
    }
}

#Preview {
    WorkerLoginView(viewModel: AuthViewModel())
}

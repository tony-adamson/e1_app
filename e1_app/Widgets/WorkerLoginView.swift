//
//  WorkerLoginView.swift
//  e1_app
//
//  Created by Антон Адамсон on 17.03.2024.
//

import SwiftUI

struct WorkerLoginView: View {
    @State private var emailText = ""
    @State private var isEmailValid = true
    @State private var navigateToEnterCode = false
    
    var body: some View {
        VStack() {
            VStack(alignment: .leading) {
                Text("Поиск работы")
                    .padding(.top, 24)
                    .font(.custom("SFProDisplay-Medium", size: 16))
                    .foregroundColor(Color.White)

                ZStack {
                    TextField("Электронная почта или телефон", text: $emailText)
                        .padding(.top, 16)
                        .textFieldStyle(.roundedBorder)
                        .border(isEmailValid ? Color.clear : Color.red)
                       
                    HStack {
                        if !emailText.isEmpty {
                            Button(action: {
                                emailText = "" // Очищаем поле при нажатии на крестик
                                isEmailValid = true // Сбрасываем состояние валидации
                            }) {
                                Spacer()
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding([.trailing, .top], 16)
                            }
                        }
                        Spacer()
                    }
                }
                .frame(height: 40)

                if !isEmailValid {
                    Text("Вы ввели неверный e-mail")
                        .foregroundColor(.red)
                        .font(.custom("SFProDisplay-Regular", size: 14))
                        .padding(.top, 8)
                }
            }
            .padding(.horizontal, 16)
            
            HStack {
                Button(action: {
                    isEmailValid = isValidEmail(emailText)
                    if isEmailValid {
                        navigateToEnterCode = true
                    }
                }) {
                    Text("Продолжить")
                        .font(.custom("SFProDisplay-Regular", size: 14))
                        .foregroundColor(emailText.isEmpty ? Color.Gray4 : Color.White)
                }
                .frame(width: 167, height: 40)
                .background(emailText.isEmpty ? Color.DarkBlue : Color.Blue)
                .cornerRadius(8)
                .disabled(emailText.isEmpty)
                
//                NavigationLink(destination: EnterCodeView(viewModel: AuthViewModel(), email: emailText), isActive: $navigateToEnterCode) {
//                    EmptyView()
//                }
//                .hidden()
                
                Spacer()
                
                // Inactive button
                Button(action: {}) {
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
    
    func isValidEmail(_ email: String) -> Bool {
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: email)
    }
}

#Preview {
    WorkerLoginView()
}

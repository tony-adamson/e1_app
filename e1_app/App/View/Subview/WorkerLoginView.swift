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
    
    private var placeholderText: Text {
        Text("Электронная почта и телефон")
            .font(AppFonts.text1)
    }
    
    var body: some View {
        VStack() {
            VStack(alignment: .leading) {
                Text("Поиск работы")
                    .padding(.top, 24)
                    .font(.custom("SFProDisplay-Medium", size: 16))
                    .foregroundColor(Color.White)
                
                HStack {
                    Image("responses")
                        //.padding(.top, 16)
                    
                    TextField("", text: $emailText, prompt: placeholderText)
                        //.padding(.top, 16)
                        //.textFieldStyle(.roundedBorder)
                        .border(isEmailValid ? Color.clear : Color.red)
                }
                .background {
                    Color.Gray5
                        .frame(height: 40)
                        .cornerRadius(8)
                        
                }
                .padding(.top, 16)

//                ZStack {
//                    TextField("Электронная почта и телефон", text: $emailText)
//                        .padding(.top, 16)
//                        .textFieldStyle(.roundedBorder)
//                        .border(isEmailValid ? Color.clear : Color.red)
                       
//                    HStack {
//                        if !emailText.isEmpty {
//                            Button {
//                                    emailText = "" // Очищаем поле при нажатии на крестик
//                                    isEmailValid = true // Сбрасываем состояние валидации
//                                } label: {
//                                    Spacer()
//                                    Image(systemName: "xmark.circle.fill")
//                                        .foregroundColor(.gray)
//                                        .padding([.trailing, .top], 16)
//                                }
//                        }
//                        Spacer()
//                    }
//                }
//                .frame(height: 40)

                if !isEmailValid {
                    Text("Вы ввели неверный e-mail")
                        .foregroundColor(.red)
                        .font(.custom("SFProDisplay-Regular", size: 14))
                        .padding(.top, 8)
                }
            }
            .padding(.horizontal, 16)
            
            HStack {
                CustomButton(
                    height: 40,
                    color: emailText.isEmpty ? Color.DarkBlue : Color.Blue,
                    text: "Продолжить",
                    isActive: true,
                    cornerRadius: 8,
                    textFont: AppFonts.buttonText2) {
                        isEmailValid = isValidEmail(emailText)
                        if isEmailValid {
                            navigateToEnterCode = true
                        }
                    }
                
                Spacer()
                
                // Inactive button
                CustomButton(
                    height: 40,
                    color: Color.Gray1,
                    text: "Войти с паролем",
                    isActive: true,
                    cornerRadius: 8,
                    textFont: AppFonts.buttonText2,
                    action: {})
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

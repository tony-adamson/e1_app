//
//  EnterCodeView.swift
//  e1_app
//
//  Created by Антон Адамсон on 17.03.2024.
//

import SwiftUI

struct EnterCodeView: View {
    @ObservedObject var viewModel: AuthViewModel
    var email: String
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("Отправили код на \(email)")
                    .foregroundStyle(Color.White)
                    .font(.custom("SFProDisplay-Semibold", size: 20))
                
                Text("Напишите его, чтобы подтвердить, что это\nвы, а не кто-то другой входит в личный\nкабинет")
                    .font(.custom("SFProDisplay-Medium", size: 16))
                    .foregroundStyle(Color.White)
                    .padding(.top, 16)
            }
            .padding(.horizontal, 16)
            
            HStack {
                TextField("*", text: .constant(""))
                    .frame(width: 48, height: 48)
                    .background(Color.Gray2)
                TextField("*", text: .constant(""))
                    .frame(width: 48, height: 48)
                    .background(Color.Gray2)
                TextField("*", text: .constant(""))
                    .frame(width: 48, height: 48)
                    .background(Color.Gray2)
                TextField("*", text: .constant(""))
                    .frame(width: 48, height: 48)
                    .background(Color.Gray2)
            }
            .padding(.leading, 16)
//            Button(action: {
//                viewModel.login()
//            }) {
//                Text("Подтвердить")
//                    .font(.custom("SFProDisplay-Regular", size: 14))
//                    .foregroundColor(Color.White)
//            }
//                .frame(maxWidth: .infinity, maxHeight: 48)
//                .foregroundColor(Color.White)
//                .background(Color.DarkBlue)
//                .cornerRadius(8)
//                .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
        }
        .background(Color.Black)
    }
}

#Preview {
    EnterCodeView(viewModel: AuthViewModel(), email: "example@mail.ru")
}

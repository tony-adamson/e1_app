//
//  EmployerLoginView.swift
//  e1_app
//
//  Created by Антон Адамсон on 17.03.2024.
//

import SwiftUI

struct EmployerLoginView: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("Поиск сотрудников")
                    .foregroundColor(Color.White)
                    .font(.custom("SFProDisplay-Medium", size: 16))
                    .padding(.top, 24)
                
                Text("Размещение вакансий и доступ к базе резюме")
                    .foregroundColor(Color.White)
                    .font(.custom("SFProDisplay-Regular", size: 14))
                    .padding(.top, 8)
            }
            .padding(.leading, 16)
            
            Button(action: {}) {
                Text("Я ищу сотрудников")
                    .font(.custom("SFProDisplay-Regular", size: 14))
                    .foregroundColor(Color.White)
            }
                .frame(maxWidth: .infinity, maxHeight: 32)
                .foregroundColor(Color.White)
                .background(Color.Green)
                .cornerRadius(50)
                .padding(EdgeInsets(top: 16, leading: 16, bottom: 24, trailing: 16))
        }
        .background(Color.Gray1)
        .clipShape(.rect(cornerRadius: 15))
    }
}

#Preview {
    EmployerLoginView()
}

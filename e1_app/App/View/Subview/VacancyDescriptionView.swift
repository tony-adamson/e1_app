//
//  VacancyDescriptionView.swift
//  e1_app
//
//  Created by Антон Адамсон on 24.03.2024.
//

import SwiftUI

struct VacancyDescriptionView: View {
    var vacancyName: String
    
    var body: some View {
        
        HStack {
            Text("Заголовок а на деле только кнопки")
        }
        
        ScrollView {
            VStack(alignment: .leading) {
                Text(vacancyName)
                    .font(AppFonts.title1)
                Text("доход")
                    .font(AppFonts.text1)
                    .padding(.top, 16)
                Text("Опыт")
                    .padding(.top, 16)
                Text("занятость")
                    .padding(.top, 6)
                
                Text("блок под 2 зеленых поля")
                    .padding(.top, 27)
                
                Text("блок под карту")
                    .padding(.top, 16)
                
                Text("описание компании")
                    .padding(.top, 16)
                
                Text("ваша задачи")
                    .padding(.top, 16)
                
                Text("описание задач")
                    .padding(.top, 8)
                
                Text("задайте вопрос")
                Text("он получит его вместе с...")
                
                Text("значения из массива вопросов - кнопки")
                
                Text("кнопка откликнуться")
            }
        }
    }
}

#Preview {
    VacancyDescriptionView(vacancyName: "Designer")
}

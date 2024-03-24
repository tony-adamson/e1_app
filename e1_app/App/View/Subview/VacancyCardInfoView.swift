//
//  VacancyCardInfoView.swift
//  e1_app
//
//  Created by Антон Адамсон on 23.03.2024.
//

import SwiftUI

struct VacancyCardInfoView: View {
    var lookingNumber: String
    var vacancyName: String
    var salary: String?
    var city: String
    var companyName: String
    var expirience: String
    var publishedDay: String
    var publishedMonth: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Сейчас просматривает \(lookingNumber) человек")
                    .font(AppFonts.text1)
                    .foregroundColor(.Green)
                Spacer()
                //Image("favorite")
            }
            Text(vacancyName)
                .font(AppFonts.title3)
                .foregroundColor(.White)
                .padding(.top, 10)
            if salary != nil {
                Text(salary!)
                    .font(AppFonts.title2)
                    .foregroundColor(.White)
                    .padding(.top, 10)
            }
            Text(city)
                .font(AppFonts.text1)
                .foregroundColor(.White)
                .padding(.top, 10)
            
            Label {
                Text(companyName)
                    .font(AppFonts.text1)
                    .foregroundColor(.White)
                } icon: {
                    Image("checkIcon")
                        .resizable()
                        .frame(width: 16, height: 16)
                }
                .labelStyle(TrailingIconLabelStyle())
                .padding(.top, 10)
            
            
            Label {
                Text(expirience)
                    .font(AppFonts.text1)
                    .foregroundColor(.White)
                } icon: {
                    Image("case")
                        .resizable()
                        .frame(width: 16, height: 16)
                }
                .padding(.top, 10)
            
            Text("Опубликовано \(publishedDay) \(publishedMonth)")
                .font(AppFonts.text1)
                .foregroundColor(.Gray3)
                .padding(.top, 10)
            CustomButton(height: 32,
                         color: .Green,
                         text: "Откликнуться",
                         isActive: true,
                         cornerRadius: 50,
                         textFont: AppFonts.buttonText2,
                         action: {
                            //TODO: Change action
                            print("Кнопка нажата!")
                            }
            )
            .padding(.top, 2)
        }
        .padding([.horizontal, .vertical], 16)
        .background(Color.Gray1)
        .clipShape(.rect(cornerRadius: 15))
    }
}

#Preview {
    VacancyCardInfoView(lookingNumber: "2", 
                        vacancyName: "UI Des",
                        salary: "5000",
                        city: "Omsk",
                        companyName: "Roga kopita", 
                        expirience: "Nol opita",
                        publishedDay: "20",
                        publishedMonth: "Feb")
}

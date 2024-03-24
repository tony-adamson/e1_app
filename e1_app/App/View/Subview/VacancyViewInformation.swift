//
//  VacancyViewInformation.swift
//  e1_app
//
//  Created by Антон Адамсон on 24.03.2024.
//

import SwiftUI

struct VacancyViewInformation: View {
    let image: String
    let number: Int
    let additionalText: String
    
    var body: some View {
        GeometryReader { geometry in
            let itemWidth = (geometry.size.width - 40) / 2
            
            HStack(alignment: .top) {
                Text("\(number) \(additionalText)")
                    .font(AppFonts.text1)
                    .foregroundColor(Color.White)
                    .padding([.leading, .top], 8)
                
                Spacer()
                
                VStack {
                    Image(image)
                        .padding([.top, .trailing], 8)
                    Spacer()
                }
            }
            .frame(width: itemWidth, height: 50, alignment: .leading)
            .background(Color.DarkGreen)
            .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

#Preview {
    VacancyViewInformation(
        image: "personGreen",
        number: 120,
        additionalText: "человек уже откликнулось"
    )
}

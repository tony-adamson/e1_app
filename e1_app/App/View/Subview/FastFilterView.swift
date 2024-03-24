//
//  AdditionalSmallCardView.swift
//  e1_app
//
//  Created by Антон Адамсон on 24.03.2024.
//

import SwiftUI

struct FastFilterView: View {
    let mainText: String
    let additionalText: String?
    let image: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(image)
                .padding(.top, 10)
                .padding(.leading, 8)
            Spacer().frame(height: 16)
            Text(mainText)
                .font(AppFonts.text1)
                .foregroundColor(Color.White)
                .padding(.leading, 8)
            if additionalText == nil {
                Spacer()
            } else {
                Text(additionalText!)
                    .font(AppFonts.text1)
                    .foregroundColor(Color.Green)
                    .padding(.leading, 8)
                    .padding(.bottom, 11)
            }
        }
        .frame(width: 132, height: 120, alignment: .leading)
        .background(Color.Gray1)
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

#Preview {
    FastFilterView(
        mainText: "Поднять резюме\nв поиске", 
        additionalText: "Поднять",
        image: "geo"
    )
}

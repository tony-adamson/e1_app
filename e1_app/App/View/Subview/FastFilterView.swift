//
//  AdditionalSmallCardView.swift
//  e1_app
//
//  Created by Антон Адамсон on 24.03.2024.
//

import SwiftUI

struct FastFilterView: View {
    let text: String
    let image: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(image)
                .padding(.top, 10)
                //.padding(.leading, 8)
            Spacer().frame(height: 16)
            Text(text)
                .font(AppFonts.text1)
                .foregroundColor(Color.White)
                //.padding(.top, 16)
                //.padding(.leading, 8)
            Spacer()
            
        }
        .frame(maxWidth: 132, maxHeight: 120)
        .background(Color.Gray1)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        
        
    }
}

#Preview {
    FastFilterView(
        text: "Вакансии\nрядом с вами",
        image: "geo"
    )
}

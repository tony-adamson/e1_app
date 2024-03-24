//
//  CustomButton.swift
//  e1_app
//
//  Created by Антон Адамсон on 23.03.2024.
//

import SwiftUI

struct CustomButton: View {
    var height: CGFloat
    var color: Color
    var text: String
    var isActive: Bool
    var cornerRadius: CGFloat
    var textFont: Font
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, minHeight: height)
                .background(isActive ? color : Color.gray) 
                .cornerRadius(cornerRadius)
                .font(textFont)
                .foregroundColor(isActive ? Color.white : Color.Gray4)
        }
    }
}

#Preview {
    CustomButton(height: 50, 
                 color: .Blue,
                 text: "Some",
                 isActive: true,
                 cornerRadius: 50,
                 textFont: AppFonts.buttonText1,
                 action: {print("Кнопка нажата!")}
    )
}

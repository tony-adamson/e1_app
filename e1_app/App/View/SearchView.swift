//
//  SearchView.swift
//  e1_app
//
//  Created by Антон Адамсон on 16.03.2024.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        Text("Search row")
        
        Text("Row with 3 buttons")
        
        Text("Вакансии для вас")
        
        Text("Блок вакансии")
        
        CustomButton(
            height: 48,
            color: Color.Blue,
            text: "Еще 143 вакансии",
            isActive: true,
            cornerRadius: 8,
            textFont: AppFonts.buttonText1,
            action: {}
        )
    }
}

#Preview {
    SearchView()
}

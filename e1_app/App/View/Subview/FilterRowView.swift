//
//  FilterRowView.swift
//  e1_app
//
//  Created by Антон Адамсон on 24.03.2024.
//

import SwiftUI

struct FilterRowView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 8) {
                FastFilterView(
                    mainText: "Вакансии\nрядом с вами",
                    additionalText: nil,
                    image: "geo"
                )
                FastFilterView(
                    mainText: "Поднять резюме в поиске",
                    additionalText: "Поднять",
                    image: "star"
                )
                FastFilterView(
                    mainText: "Временная\nработа и\nподработка",
                    additionalText: nil,
                    image: "list"
                )
            }
        }
    }
}

#Preview {
    FilterRowView()
}

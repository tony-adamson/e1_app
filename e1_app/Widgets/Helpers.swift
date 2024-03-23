//
//  Helpers.swift
//  e1_app
//
//  Created by Антон Адамсон on 24.03.2024.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

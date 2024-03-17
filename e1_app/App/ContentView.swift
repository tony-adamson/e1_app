//
//  ContentView.swift
//  e1_app
//
//  Created by Антон Адамсон on 16.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            SearchView()
                .badge(1)
                .tabItem {
                    Label("Поиск", image: "search")
                }
            
            Text("Избранное")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                .background(.yellow)
                .badge(1)
                .tabItem {
                    Label("Избранное", image: "favorite")
                }
            
            Text("Отклики")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                .background(.red)
                .tabItem {
                    Label("Отклики", image: "responses")
                }
            
            Text("Сообщения")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                .background(.cyan)
                .tabItem {
                    Label("Сообщения", image: "messages")
                }
            
            Text("Профиль")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                .background(.green)
                .tabItem {
                    Label("Профиль", image: "profile")
                }
        }
        
    }
}

#Preview {
    ContentView()
}

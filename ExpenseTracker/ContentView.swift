//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Ivan Jhair Gomez Rincon on 15/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                ExpenseView()
                    .tabItem { Label("Historial", systemImage: "clock.fill")
                    }.badge(3)
                ExpenseView()
                    .tabItem { Label("Gastos", systemImage: "credit.card.fill")
                    }
                
                ExpenseView()
                    .tabItem { Label("Cuenta", systemImage: "person.crop.circle.fill")
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}

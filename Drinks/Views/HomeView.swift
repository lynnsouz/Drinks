//
//  ContentView.swift
//  Drinks
//
//  Created by Lynneker Souza on 4/22/20.
//  Copyright © 2020 Lynneker Souza. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    var categories: [String: [Drink]] {
        .init(
            grouping: drinkData,
            by: { $0.category.rawValue }
        )
    }
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ForEach (self.categories.keys.sorted(), id: \String.self) { key in
                    DrinkRow(categoryName: "\(key) Drinks", drinks: self.categories[key] ?? [])
                        .padding([.top, .bottom])
                }
            }.edgesIgnoringSafeArea(.horizontal)
                .navigationBarTitle(Text("Drinks List"))
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}

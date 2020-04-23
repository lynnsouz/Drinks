//
//  DrinkRow.swift
//  Drinks
//
//  Created by Lynneker Souza on 4/22/20.
//  Copyright © 2020 Lynneker Souza. All rights reserved.
//

import SwiftUI

struct DrinkRow: View {
    
    var categoryName: String
    var drinks: [Drink]
    
    var body: some View {
        VStack(alignment: .leading){
            
            Text(self.categoryName.uppercased())
                .font(.title)
                .padding(.leading)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach (self.drinks, id: \.name) { drink in
                        NavigationLink(destination: DrinkDetails(drink: drink)) {
                            DrinkInfo(drink: drink)
                                .frame(width: 300)
                                .padding(.trailing, 24)
                        }.buttonStyle(PlainButtonStyle())
                    }
                }.padding([.top, .leading])
            }
        }
    }
}

struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "Hot drinks", drinks: drinkData.filter({$0.category == .hot}))
    }
}

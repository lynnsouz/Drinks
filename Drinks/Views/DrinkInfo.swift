//
//  DrinkInfo.swift
//  Drinks
//
//  Created by Lynneker Souza on 4/22/20.
//  Copyright © 2020 Lynneker Souza. All rights reserved.
//

import SwiftUI

struct DrinkInfo: View {
    
    var drink: Drink
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(drink.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 170)
                .cornerRadius(10)
                .shadow(radius: 10)
            
            VStack(alignment: .leading, spacing: 8.0) {
                Text(drink.name)
                    .font(.headline)
                
                Text(drink.description)
                    .font(.subheadline)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
            }
        }
    }
}

struct DrinkInfo_Previews: PreviewProvider {
    static var previews: some View {
        DrinkInfo(drink: drinkData[0])
    }
}

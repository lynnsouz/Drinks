//
//  DrinkDetails.swift
//  Drinks
//
//  Created by Lynneker Souza on 4/22/20.
//  Copyright © 2020 Lynneker Souza. All rights reserved.
//

import SwiftUI

struct DrinkDetails: View {
    
    var drink: Drink
    
    var body: some View {
        List() {
            ZStack(alignment: .bottom) {
                Image(drink.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                Rectangle()
                    .frame(height: 80)
                    .opacity(0.25)
                    .blur(radius: 10)
                HStack {
                    VStack(alignment: .leading, spacing: 8.0) {
                        Text(drink.name)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .padding(.bottom)
                    .padding(.leading)
                    Spacer()
                }
            }.frame(height: 300)
                .clipped()
                .listRowInsets(EdgeInsets())
            VStack(alignment: .leading, spacing: 16) {
                Text(drink.description)
                    .foregroundColor(.primary)
                    .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(12)
                
                HStack {
                    Spacer()
                    OrderButton()
                    Spacer()
                }.padding(.top, 24).padding(.bottom, 24)
            }.padding(.top, 24)
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
        
    }
}

struct OrderButton: View {
    var body: some View {
        Button(action: {}) {
            Text("Order Now")
                .foregroundColor(.white)
        }.frame(width: 200, height: 50)
            .font(.headline)
            .background(Color.blue)
            .cornerRadius(10)
    }
}

struct DrinkDetails_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetails(drink: drinkData[5])
    }
}

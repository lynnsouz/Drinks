//
//  Drink.swift
//  Drinks
//
//  Created by Lynneker Souza on 4/22/20.
//  Copyright © 2020 Lynneker Souza. All rights reserved.
//

import SwiftUI

struct Drink: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var category: Category
    var description: String
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case hot = "hot"
        case cold = "cold"
    }
}

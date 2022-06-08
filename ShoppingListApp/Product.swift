//
//  Product.swift
//  ShoppingListApp
//
//  Created by Dmitryi Velko on 07.06.2022.
//

import Foundation

struct Product: Identifiable, Codable, Comparable {
    var id: UUID
    var name: String
    var quantity: Int?
    
    static func < (lhs: Product, rhs: Product) -> Bool {
        lhs.name < rhs.name
    }
}

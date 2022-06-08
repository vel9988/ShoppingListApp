//
//  MainVM.swift
//  ShoppingListApp
//
//  Created by Dmitryi Velko on 07.06.2022.
//

import Foundation

extension ContentView {
    @MainActor class MainVM: ObservableObject {
        @Published var showingCreateList = false
        @Published var shoppingList = [Product]()
        
        
        
    }
    
}

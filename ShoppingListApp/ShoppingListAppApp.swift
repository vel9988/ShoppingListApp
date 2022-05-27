//
//  ShoppingListAppApp.swift
//  ShoppingListApp
//
//  Created by Dmitryi Velko on 25.05.2022.
//

import SwiftUI

@main
struct ShoppingListAppApp: App {
    @StateObject var viewRouter = ViewRouter()

    var body: some Scene {
        WindowGroup {
            ContentView(viewRouter: ViewRouter())
        }
    }
}

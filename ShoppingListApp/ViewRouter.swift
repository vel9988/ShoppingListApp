//
//  ViewRouter.swift
//  ShoppingListApp
//
//  Created by Dmitryi Velko on 27.05.2022.
//

import SwiftUI

class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .list

}

enum Page {
     case list
     case settings
 }

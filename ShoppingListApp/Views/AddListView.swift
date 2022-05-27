//
//  AddListView.swift
//  ShoppingListApp
//
//  Created by Dmitryi Velko on 27.05.2022.
//

import SwiftUI

struct AddListView: View {
    private let outlineColor = (Color(#colorLiteral(red: 1, green: 0.3764705955982208, blue: 0.3764705955982208, alpha: 1)))
    
    @State private var newListName = ""
    var body: some View {
        ZStack {
            BackgroundMainView()
            TextField("Имя списка", text: $newListName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(outlineColor, width: 3)
                .padding()
        }
    }
}

struct AddListView_Previews: PreviewProvider {
    static var previews: some View {
        AddListView()
    }
}

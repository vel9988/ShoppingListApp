//
//  AddListView.swift
//  ShoppingListApp
//
//  Created by Dmitryi Velko on 27.05.2022.
//

import SwiftUI

struct AddListView: View {
    
    @State private var newListName = ""
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            BackgroundMainView()
            VStack {
                TextField("Имя списка", text: $newListName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                HStack {
                    // Исправить размер кнопок
                    ControlButton(name: "Назад") {
                        dismiss()
                    }
                    ControlButton(name: "Создать") {
                        print("Создать")
                    }
                }
            }
        }
    }
}

//MARK: - ControlButton
struct ControlButton: View {
    let name: String
    let action: () -> Void
    
    var body: some View {
        Button(name) {
            action()
        }
        .padding()
        .background(Color(red: 0, green: 0, blue: 0.8))
        .foregroundColor(.white)
        .clipShape(Capsule())
    }
}



struct AddListView_Previews: PreviewProvider {
    static var previews: some View {
        AddListView()
    }
}



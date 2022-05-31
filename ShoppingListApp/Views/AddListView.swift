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
            Background()
            VStack {
                TextField("Имя списка", text: $newListName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                HStack {
                    // Исправить размер кнопок
                    ControlButton(name: "Назад") {
                        dismiss()
                    }
                    .buttonStyle(GrowingButton())
                    ControlButton(name: "Создать") {
                        print("Создать")
                    }
                    .buttonStyle(GrowingButton())
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
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(Capsule())

    }
    
}

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
//            .padding()
//            .background(.blue)
//            .foregroundColor(.white)
//            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}



struct AddListView_Previews: PreviewProvider {
    static var previews: some View {
        AddListView()
    }
}



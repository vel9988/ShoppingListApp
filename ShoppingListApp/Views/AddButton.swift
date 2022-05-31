//
//  AddButton.swift
//  ShoppingListApp
//
//  Created by Dmitryi Velko on 31.05.2022.
//

import SwiftUI

struct AddButton: View {
    let buttonSize: CGFloat
    let action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                Circle()
                    .foregroundColor(.white)
                    .frame(width: buttonSize, height: buttonSize)
                    .shadow(radius: 10)
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: buttonSize - 6, height: buttonSize - 6)
                    .foregroundColor(.purple)
            }
            .padding()
        }
    }
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddButton(buttonSize: 40) {
            print("test")
        }
    }
}

//
//  MenuButton.swift
//  ShoppingListApp
//
//  Created by Dmitryi Velko on 31.05.2022.
//

import SwiftUI

struct MenuButton: View {
    let iconName: String
    let widthIcon, heightIcon: CGFloat
    let action: () -> Void
    
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: iconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: widthIcon, height: heightIcon)
                .foregroundColor(.white)
        }
    }
}


struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        MenuButton(iconName: "gearshape", widthIcon: 40, heightIcon: 60) {
            print("test")
        }
    }
}

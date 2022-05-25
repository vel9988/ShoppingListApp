//
//  CustomBar.swift
//  ShoppingListApp
//
//  Created by Dmitryi Velko on 25.05.2022.
//

import SwiftUI

struct ButtonForCustomBar: View {
    let widthIcon, heightIcon: CGFloat
    let systemIconName: String
    
    var body: some View {
        Image(systemName: systemIconName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: widthIcon, height: heightIcon)
            .foregroundColor(.white)
    }
}




struct CustomBar_Previews: PreviewProvider {
    static var previews: some View {
        ButtonForCustomBar(widthIcon: 50, heightIcon: 50, systemIconName: "list.bullet.rectangle.portrait")
            .previewLayout(PreviewLayout.sizeThatFits)
            .padding()
            .previewDisplayName("Default preview")
            
    }
}



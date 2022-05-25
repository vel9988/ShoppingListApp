//
//  CustomBar.swift
//  ShoppingListApp
//
//  Created by Dmitryi Velko on 25.05.2022.
//

import SwiftUI

struct CustomBar: View {
    private let colorCustomBar = (Color(#colorLiteral(red: 1, green: 0.3764705955982208, blue: 0.3764705955982208, alpha: 1)))
    let widthIcon, heightIcon: CGFloat
    let widthBar, heightBar: CGFloat
    let systemIconName: String
    
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: systemIconName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: widthIcon, height: heightIcon)
                    .padding(.top, 10)
            }

            
        }
        .frame(width: widthBar, height: heightBar)
        .background(colorCustomBar.shadow(radius: 2))
    }
}

                         


struct CustomBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomBar(widthIcon: 50, heightIcon: 50, widthBar: 400, heightBar: 100, systemIconName: "server.rack")
            .previewLayout(PreviewLayout.sizeThatFits)
            .padding()
            .previewDisplayName("Default preview")
    }
}



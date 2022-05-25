//
//  BackgroundMainView.swift
//  ShoppingListApp
//
//  Created by Dmitryi Velko on 25.05.2022.
//

import SwiftUI

struct BackgroundMainView: View {
    private var backgroundGradient = Gradient(colors: [Color(#colorLiteral(red: 0.16862745583057404, green: 0.1725490242242813, blue: 0.24313725531101227, alpha: 1)), Color(#colorLiteral(red: 0.13333334028720856, green: 0.13333334028720856, blue: 0.18039216101169586, alpha: 1))])
    
    var body: some View {
        LinearGradient(gradient: backgroundGradient, startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
    }
}

struct BackgroundMainView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMainView()
    }
}

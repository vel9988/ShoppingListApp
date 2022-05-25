//
//  ContentView.swift
//  ShoppingListApp
//
//  Created by Dmitryi Velko on 25.05.2022.
//

import SwiftUI

struct ContentView: View {
    private let colorCustomBar = (Color(#colorLiteral(red: 1, green: 0.3764705955982208, blue: 0.3764705955982208, alpha: 1)))
    
    var body: some View {
        ZStack {
            BackgroundMainView()
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    Text("Home")
                    Spacer()
                    HStack {
                        Image(systemName: "server.rack")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: geometry.size.width/2, height: geometry.size.height/20)
                            .padding(.top, 10)
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height/8)
                    .background(colorCustomBar.shadow(radius: 2))
                    
                }
            }
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

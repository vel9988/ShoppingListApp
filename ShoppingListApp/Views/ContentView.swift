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
                    Text("Wait update...")
                    Spacer()
                    HStack {
                        ButtonForCustomBar(widthIcon: geometry.size.width/2, heightIcon: geometry.size.height/20, systemIconName: "list.bullet.rectangle.portrait")
                            .onTapGesture {
                                print("Button List Create") //???
                            }
                        ZStack {
                             Circle()
                                 .foregroundColor(.white)
                                 .frame(width: geometry.size.width/7, height: geometry.size.width/7)
                                 .shadow(radius: 10)
                            Image(systemName: "plus.circle.fill")
                                     .resizable()
                                     .aspectRatio(contentMode: .fit)
                                     .frame(width: geometry.size.width/7-6 , height: geometry.size.width/7-6)
                                     .foregroundColor(.purple)
                         }
                         .offset(y: -geometry.size.height/8/2)
                         .onTapGesture {
                             print("Button Plus Create") //???
                         }
                        
                        ButtonForCustomBar(widthIcon: geometry.size.width/2, heightIcon: geometry.size.height/20, systemIconName: "gearshape")
                            .onTapGesture {
                                print("Button Settings Create") //???
                            }
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height/8)
                    .background(colorCustomBar.shadow(radius: 15))
                    
                }
                .edgesIgnoringSafeArea(.bottom)
            }
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  ShoppingListApp
//
//  Created by Dmitryi Velko on 25.05.2022.
//

import SwiftUI

struct ContentView: View {
    private let colorCustomBar = (Color(#colorLiteral(red: 1, green: 0.3764705955982208, blue: 0.3764705955982208, alpha: 1)))
    
    @StateObject var viewRouter: ViewRouter

    
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundMainView()
                GeometryReader { geometry in
                    VStack {
                        Image(systemName: "list.bullet.rectangle.portrait.fill")
                            .resizable()
                            .frame(width: geometry.size.width/4, height: geometry.size.height/5)
                            .foregroundColor(.white)
                            .padding()
                        Text("Создайте первый список просто нажмите на пурпурную кнопку")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame(width: geometry.size.width/2, alignment: .center)
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
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button {
                        print("OK")
                    } label: {
                        Image(systemName: "person.fill")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 25, height: 25)
                            .padding()
                    }
                }
            }
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
            .previewInterfaceOrientation(.portrait)
    }
}

//
//  ContentView.swift
//  ShoppingListApp
//
//  Created by Dmitryi Velko on 25.05.2022.
//

import SwiftUI

struct ContentView: View {
    private let colorCustomBar = (Color(#colorLiteral(red: 1, green: 0.3764705955982208, blue: 0.3764705955982208, alpha: 1)))
    
    @StateObject private var mainVM = MainVM()
    
    var body: some View {
        NavigationView {
            ZStack {
                Background()
                GeometryReader { geometry in
                    VStack {
                        Section {
                            Image(systemName: "list.bullet.rectangle.portrait.fill")
                                .resizable()
                                .frame(width: geometry.size.width/4, height: geometry.size.height/5)
                                .foregroundColor(.white)
                                .padding()
                            Text("Создайте первый список просто нажмите на кнопку с плюсом")
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .frame(width: geometry.size.width/2, alignment: .center)
                        }
                        Spacer()
                        HStack {
                            MenuButton(
                                iconName: "list.bullet.rectangle.portrait",
                                widthIcon: geometry.size.width/2,
                                heightIcon: geometry.size.height/20) {
                                    print("Button List Create") //???
                                }
                            AddButton(buttonSize: geometry.size.width/7) {
                                mainVM.showingCreateList = true
                            }
                            .offset(y: -geometry.size.height/8/2)
                            MenuButton(
                                iconName: "gearshape",
                                widthIcon: geometry.size.width/2,
                                heightIcon: geometry.size.height/20) {
                                    print("Button Settings Create") //???
                                }
                            
                        }
                        .frame(width: geometry.size.width, height: geometry.size.height/8)
                        .background(colorCustomBar.shadow(radius: 15))
                        .sheet(isPresented: $mainVM.showingCreateList) {
                            AddListView()
                        }
                    }
                    .edgesIgnoringSafeArea(.bottom)
                }
            }
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button {
                        print("Account")
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
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

//
//  NewListView.swift
//  ShoppingListApp
//
//  Created by Dmitryi Velko on 31.05.2022.
//

import SwiftUI

struct NewListView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Background()
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
                            Spacer()
                            AddButton(buttonSize: geometry.size.width/7) {
                                print("test")
                            }
                        }
                    }
                }
            }
        }
    }
}



struct NewListView_Previews: PreviewProvider {
    static var previews: some View {
        NewListView()
    }
}



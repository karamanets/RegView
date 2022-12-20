//
//  Main.swift
//  RegView
//
//  Created by Alex Karamanets on 19.12.2022.
//

/*
 Tasks 🦉
 1. Refactoring      📌 ✅
 2. Add logotype     📌
 3. Mode adapt       📌 ✅
 4. Add shadow imag  📌 ✅
 5. Add animation    📌
 */

import SwiftUI

struct Main: View {
    
    @State private var index = 0
    
    var body: some View {
        
        GeometryReader { _ in
            ScrollView {
                VStack {
                    Image("logoAdidas")
                        .resizable()
                        .scaledToFit()
                        .colorMultiply(Color("color3"))
                        .frame(width: 70, height: 90)
                    
                    ZStack {
                        
                        SingUp(index: $index)
                            .zIndex(Double(self.index))
                        Login(index: $index)
                    }
                    HStack (spacing: 15) {
                        Rectangle()
                            .fill(Color("color2"))
                            .frame(height: 2)
                        
                        Text("OR")
                        
                        Rectangle()
                            .fill(Color("color2"))
                            .frame(height: 2)
                    }
                    .padding(.horizontal, 30)
                    .padding(.top, 50)
                    
                    HStack (spacing: 40) {
                        Button {
                            //
                        } label: {
                            Image("logoInsta")
                                .resizable()
                                .renderingMode(.original)
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .shadow(color: Color("color1").opacity(0.7), radius: 2, x: 0, y: -2)
                                .overlay(Capsule() .stroke(Color.black.opacity(0.5))
                                    .shadow(color: .black, radius: 3, x: -2, y: -2))
                        }
                        Button {
                            //
                        } label: {
                            Image("logoTwitter")
                                .resizable()
                                .renderingMode(.original)
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .shadow(color: Color("color1").opacity(0.7), radius: 2, x: 0, y: -2)
                                .overlay(Capsule() .stroke(Color.black.opacity(0.5))
                                    .shadow(color: .black, radius: 3, x: -2, y: -2))
                        }
                        Button {
                            //
                        } label: {
                            Image("logoYoutube")
                                .resizable()
                                .renderingMode(.original)
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .shadow(color: Color("color1").opacity(0.7), radius: 2, x: 0, y: -2)
                                .overlay(Capsule() .stroke(Color.black.opacity(0.5))
                                    .shadow(color: .black, radius: 3, x: -2, y: -2))
                        }
                    }
                    .padding(.top, 20)
                }
                .padding(.vertical)
            }
            .background(Color("color3") .ignoresSafeArea())
            .preferredColorScheme(.dark)
        }
    }
}



//                   📌
struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}


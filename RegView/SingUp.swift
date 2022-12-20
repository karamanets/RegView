//
//  SingUp.swift
//  RegView
//
//  Created by Alex Karamanets on 20.12.2022.
//

import SwiftUI

struct SingUp: View {
    
    @State private var email  = ""
    @State private var pass   = ""
    @State private var rePass = ""
    
    @Binding var index: Int
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            VStack {
                HStack {
                    Spacer(minLength: 0)
                    VStack (spacing: 10){
                        Text("SingUp")
                            .foregroundColor(self.index == 1 ? Color.white : Color.gray)
                            .font(.title .bold())
                        
                        Capsule()
                            .fill(self.index == 1 ? Color.blue : Color.clear)
                            .frame(width: 100, height: 5 )
                    }
                }
                .padding(.top, 30)
                
                VStack {
                    HStack (spacing: 25 ){
                        Image(systemName: "envelope.fill")
                            .foregroundColor(Color("color2"))
                        
                        TextField("Email Address", text: $email)
                    }
                    Divider()
                        .background(Color.white .opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 40)
                
                VStack {
                    HStack (spacing: 25 ){
                        Image(systemName: "key.horizontal.fill")
                            .foregroundColor(Color("color2"))
                        
                        SecureField("Password", text: $pass)
                    }
                    Divider()
                        .background(Color.white .opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 40)
                
                VStack {
                    HStack (spacing: 25){
                        Image(systemName: "key.horizontal.fill")
                            .foregroundColor(Color("color2"))
                        
                        SecureField("Password", text: $rePass) {
                            //
                        }
                        .textContentType(.newPassword)
                    }
                    Divider()
                        .background(Color.white .opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 40)
            }
            .padding()
            .padding(.bottom, 65)
            .background(Color("color1"))
            .clipShape(CShape2())
            .contentShape(CShape2())
            .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: -5)
            .overlay(CShape2().stroke(Color("color2"), lineWidth: 5)
                .shadow(color: .black.opacity(0.6), radius: 5, x: -1, y: -3))
            .onTapGesture {
                self.index = 1
            }
            .cornerRadius(35)
            .padding(.horizontal, 15)
            
            Button {
                //
            } label: {
                Text("LOGIN")
                    .foregroundColor(.white)
                    .font(.system(size: 21) .bold())
                    .padding(.vertical)
                    .padding(.horizontal, 40)
                    .background(Color("color2"))
                    .clipShape(Capsule())
            }
            .shadow(color: .white.opacity(0.7), radius: 3, x: 0, y: -3)
            .overlay(Capsule() .stroke(Color.black.opacity(0.5)) .shadow(color: .black, radius: 3, x: -2, y: -2))
            .offset(y: 26 )
            .opacity(self.index == 1 ? 1.0 : 0.0)
        }
    }
}


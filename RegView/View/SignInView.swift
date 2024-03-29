//
//  SignInView.swift
//  RegView
//
//  Created by Alex Karamanets on 20.12.2022.
//

import SwiftUI

struct SignInView: View {
    
    @State private var email = ""
    @State private var pass  = ""
    
    @Binding var index: Int
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            VStack {
                HStack {
                    VStack (spacing: 10){
                        Text("Login")
                            .foregroundColor(self.index == 0 ? Color.white : Color.gray)
                            .font(.title .bold())
                        
                        Capsule()
                            .fill(self.index == 0 ? Color.blue : Color.clear)
                            .frame(width: 100, height: 5 )
                        
                    }
                    Spacer(minLength: 0)
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
                
                HStack {
                    Spacer(minLength: 0)
                    Button {
                        //
                    } label: {
                        Text("Forget you password?")
                            .foregroundColor(Color("color2") .opacity(0.6))
                    }
                }
                .padding(.horizontal)
                .padding(.top, 40)
            }
            .padding()
            .padding(.bottom, 65)
            .background(Color("color1"))
            .clipShape(CShape1())
            .contentShape(CShape1())
            .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: -5)
            .overlay(CShape1().stroke(Color("color2"), lineWidth: 5)
                .shadow(color: .black.opacity(0.6), radius: 5, x: -1, y: -3))
            .onTapGesture {
                self.index = 0
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
            .opacity(self.index == 0 ? 1.0 : 0.0)
        }
    }
}
//                   🔱
struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView(index: .constant(0))
    }
}

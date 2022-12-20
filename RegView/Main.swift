//
//  Main.swift
//  RegView
//
//  Created by Alex Karamanets on 19.12.2022.
//

/*
 Tasks 🦉
 1. Refactoring      📌
 2. Add logotype     📌
 3. Mode adapt       📌
 4. Add shadow imag  📌
 */

import SwiftUI

struct Main: View {
    
    @State private var index = 0
    
    var body: some View {
     
        GeometryReader { _ in
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
                    }
                    Button {
                        //
                    } label: {
                        Image("logoTwitter")
                            .resizable()
                            .renderingMode(.original)
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                    }
                    Button {
                        //
                    } label: {
                        Image("logoYoutube")
                            .resizable()
                            .renderingMode(.original)
                            .scaledToFit()
                            .frame(width: 50, height: 50)
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

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}

struct CShape1: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        return Path { path in
            
            path.move(to: CGPoint(x: rect.width, y: 100))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: 0))
        }
    }
}

struct CShape2: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        return Path { path in
            
            path.move(to: CGPoint(x: 0, y: 100))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
        }
    }
}


struct Login: View {
    
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

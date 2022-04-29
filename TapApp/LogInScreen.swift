//
//  LogInScreen.swift
//  TapApp
//
//  Created by Kirill Willer on 1.03.22.
//

import SwiftUI

extension Color {
    static let bgMilk = Color("BackgroundMilk")
    static let bgOrange = Color("BackgroundOrange")
    static let newYellow = Color("Yellow")
    static let granatowy = Color("Granatowy")
    static let bgwhite = Color("White")
    static let mdbold = Font("DMSans-Bold (Base)" as! CTFont)
    
}
struct LogInScreen: View {
   
    @State var username: String = ""
    @State var Password: String = ""
    @State var logtext: String = " "
    @State private var accoun:Bool = false
   // @ObservedObject var model = SingUpScreen()
    
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.bgOrange]), startPoint: .top, endPoint: .bottom)
                       .edgesIgnoringSafeArea(.vertical)
                
            VStack(spacing: 0.0){
              
              
                    Text("tap")
                        .font(.custom("DMSans-Bold", size: 80))
                        .foregroundColor(Color.white)
                        .padding()
                        .padding(.bottom, 10.0)
                    .padding(.trailing, 210.0)
                
        
                VStack(spacing: 12.43) {
                    TextField("  Username", text: $username)
                        .frame(width: 307.01, height: 37.57, alignment: .center)
                        .background(Color.bgMilk)
                        .cornerRadius(52.5989)
                        .padding(.horizontal)
                    .padding(.bottom, 2.43)
                
                   
            SecureField("  Password", text: $Password) // paswordfield
                    .frame(width: 307.01, height: 37.57, alignment: .center)
                .background(Color.bgMilk)
                .cornerRadius(52.5989)
                //.padding(.bottom, 10.0)
                .padding(.horizontal)
                }
           
            HStack{
                Button(action:{
                        if Password != "pass" {
                    logtext = "Incorrect pasword or login"
                }
                    else
                    {
                        logtext = "Sucsesfuly loged in!"
                    }
                }, label: {
                    Text("Log In")
                        .font(.custom("DMSans-Bold", size: 20))
                        .bold()
                }) // log in buton
                    .frame(width: 185, height: 38, alignment: .center)
                    .background(Color.bgOrange)
                    .cornerRadius(52.5989)
                    .foregroundColor(Color.granatowy)
              
                    .padding(.leading, 41)
                Spacer()
                
                Button(action:{
                    self.accoun.toggle()
                }, label: {
                    Text("Sing Up")
                        .font(.custom("DMSans-Bold", size: 20))
                        .bold()
                }) //sing up button
                    .sheet(isPresented: $accoun){
                        SingUpScreen()
                    }
                
                    .frame(width: 96, height: 33.57, alignment: .center)
                
                    .cornerRadius(52.5989)
                    .foregroundColor(Color.granatowy)
                    .overlay(
                                RoundedRectangle(cornerRadius: 52.5989)
                                    .stroke(Color.granatowy, lineWidth: 2)
                                    .frame(width: 96, height: 33.57, alignment: .center)
                            )
                    .padding(.trailing, 42.0)
            }// hstack
            .padding(.top, 10.43)
                Text(logtext)
                    .padding()
                    .padding(.top)
                    .foregroundColor(Color.red)
            } // vstack
    } // zstack
    }
}

struct LogInScreen_Previews: PreviewProvider {
    static var previews: some View {
        LogInScreen()
    }
}


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
}
struct LogInScreen: View {
   
    @State var username: String = ""
    @State var Password: String = ""
    @State var logtext: String = " "
    
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.bgMilk, Color.bgOrange]), startPoint: .top, endPoint: .bottom)
                       .edgesIgnoringSafeArea(.vertical)
                
            VStack{
              
                Text("tap")
                    .font(.custom("DMSans-Bold", size: 80))
                    .foregroundColor(Color.white)
                    .padding()
                    .padding(.bottom, 10.0)
                    .padding(.trailing, 210.0)
        
                TextField("  Username", text: $username)
                    .frame(width: 307.01, height: 37.57, alignment: .center)
                    .background(Color.bgMilk)
                    .cornerRadius(52.5989)
                    .padding(.horizontal)
                   
            SecureField("  Password", text: $Password) // paswordfield
                    .frame(width: 307.01, height: 37.57, alignment: .center)
                .background(Color.bgMilk)
                .cornerRadius(52.5989)
                .padding(.bottom, 10.0)
                .padding(.horizontal)
           
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
                        .font(.title3)
                        .bold()
                }) // log in buton
                    .frame(width: 170, height: 37.57, alignment: .center)
                    .background(Color.bgOrange)
                    .cornerRadius(52.5989)
                    .foregroundColor(Color.granatowy)
                
                Button(action:{
                }, label: {
                    Text("Sing Up")
                        .font(.title3)
                        .bold()
                }) //sing up button
                
                    .frame(width: 96, height: 33.57, alignment: .center)
                
                    .cornerRadius(52.5989)
                    .foregroundColor(Color.granatowy)
                    .overlay(
                                RoundedRectangle(cornerRadius: 52.5989)
                                    .stroke(Color.granatowy, lineWidth: 2)
                                    .frame(width: 96, height: 33.57, alignment: .center)
                            )
            } // hstack
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


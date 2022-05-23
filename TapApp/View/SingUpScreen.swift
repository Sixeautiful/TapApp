//
//  SingUpScreen.swift
//  TapApp
//
//  Created by Kirill Willer on 1.03.22.
//

import SwiftUI

struct SingUpScreen: View{
    
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
            

                 Button(action:{
                  // account = true
                 }, label: {
                     Text("Sing Up")
                         .font(.title3)
                         .bold()
                 }) // log in buton
                     .frame(width: 96, height: 33.57, alignment: .center)
                 
                     .cornerRadius(52.5989)
                     .foregroundColor(Color.granatowy)
                     .overlay(
                                 RoundedRectangle(cornerRadius: 52.5989)
                                     .stroke(Color.granatowy, lineWidth: 2)
                                     .frame(width: 96, height: 33.57, alignment: .center)
                             )
                
                 Text(logtext)
                     .padding()
                     .padding(.top)
                     .foregroundColor(Color.red)
             } // vstack
     } // zstack
     }
}

struct SingUp_Previews: PreviewProvider {
    static var previews: some View {
        SingUpScreen()
    }
}

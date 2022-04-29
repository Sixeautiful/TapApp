//
//  ContentView.swift
//  TapApp
//
//  Created by Kirill Willer on 1.03.22.
//

import SwiftUI



struct ContentView: View {
    
    @State var account: Bool = true
    
    var body: some View {
        if !account {
            SingUpScreen()
        }
        else{
            LogInScreen()
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

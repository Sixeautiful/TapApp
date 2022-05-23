//
//  View model.swift
//  TapApp
//
//  Created by Kirill Willer on 11.05.22.
//

import Foundation
import Firebase

class ViewModel: ObservableObject {
    @Published var logData = [loginData]()
    
    // get data for cheak is correct password and username
    func getdata(username:String) -> String{
        
        // Set Up datebase
        let db = Firestore.firestore()
        
        //get documents
        db.collection("logData").getDocuments { snapshot, error in
            
            //Cheak errors
            if error == nil {
                if let snapshot = snapshot {
                    //Update list properi in the main threat
                    
                    // all it is referens need to find data by username and cheak password
                    DispatchQueue.main.async {
                        //Get documents and create todo array
                        
                        self.logData = snapshot.documents.map { d in
                            
                            // Create to do item for each document return
                            return loginData(id: d.documentID, username: d["username"] as? String ?? "", password: d["password"] as? String ?? "")
                        }
                }
            }
            else{
                
            }
        }
        }
        return ""
    }
    
    
    func cheak(password: String, username: String) -> String {
        
        return ""
    }
}

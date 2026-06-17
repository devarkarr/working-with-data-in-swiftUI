//
//  AppStorage_Intro.swift
//  working with data
//
//  Created by Ar Kar Lin on 6/16/26.
//

import SwiftUI

struct User: Codable {
    var name = ""
    var age = 0
    
    func encode() -> Data? {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(self) {
            return encoded
        } else {
            return nil
        }
    }
    
    static func decode(userData: Data) -> User? {
        let decoder = JSONDecoder()
        if let user = try? decoder.decode(User.self, from: userData) {
            return user
        } else {
            return nil
        }
    }
}


struct AppStorage_Intro: View {
    @AppStorage("user") var userData = User(name: "Joe Duran", age: 26).encode()!
    @AppStorage("username") var username = "Mark"
    @AppStorage("darkBackground") var darkBackground = false
    @State private var userName = ""
    @State private var age = 0

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
             
            Text("AppStorage: username")
                Toggle(isOn: $darkBackground, label: {
                Text("Use Dark Background?")
                })
                .padding()
                
            Text("\(username)").bold()
                Text("Name: \(userName)").bold()
                Text("Age: \(age)").bold()
        
                NavigationLink("Edit", destination: AppStorage_Edit()).padding().background(
                    Rectangle().fill(.blue)
                )
        }
        .font(.title)
        .navigationTitle("App Storage")
        .preferredColorScheme(darkBackground ? .dark : .light)
        .onAppear{
            getAppStorageData()
        }
    }
        
}
    
    func getAppStorageData() {
        if let appUser = User.decode(userData: userData){
            userName = appUser.name
            age = appUser.age
        }
        
    }
}


struct AppStorage_Edit: View {
    @AppStorage("username") var username: String!
    @State private var newUsername = ""
    
    var body: some View {
        VStack(spacing: 20) {
  
        Text("Enter a new user name:")
        TextField("new user name", text: $newUsername)
        .textFieldStyle(.roundedBorder)
        .padding(.horizontal)
            Button("Update") {
                username = newUsername
          
            }
        }
        .font(.title)
       
    }
}

//
//  StructVariables.swift
//  working with data
//
//  Created by Ar Kar Lin on 6/16/26.
//

import SwiftUI

@propertyWrapper
struct FourCharacter {
    private var value = ""
    
    var wrappedValue: String {
        get { value }
        set {
            value = String(newValue.prefix(4))
        }
    }
}


struct PropertyWrappers_Intro: View {
    @State private var newPIN = ""
    
    var body: some View {

        Text("Old PIN : 1234")
        Text("New PIN : 56789")
        Button("Save PIN"){
            @FourCharacter var newPin : String
            newPin = "567890"
            newPIN = newPin
        }
        
        Text("Your New PIN : ") + Text(newPIN).bold()
    }
}

#Preview {
    PropertyWrappers_Intro()
}

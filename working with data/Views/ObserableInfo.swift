//
//  ObserableInfo.swift
//  working with data
//
//  Created by Ar Kar Lin on 6/16/26.
//

import SwiftUI
import Observation

@Observable
class PersonClass {
    var name: String = ""
}

struct ObserableInfo : View {
 @State private var personClass = PersonClass()
    
    var body: some View {
        
        TextField("name", text: $personClass.name)
            .textFieldStyle(.roundedBorder)
        Text(personClass.name)
    }
}


#Preview {
    ObserableInfo()
}

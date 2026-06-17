//
//  Environment_Intro.swift
//  working with data
//
//  Created by Ar Kar Lin on 6/17/26.
//

import SwiftUI
import Observation

@Observable
class DeveloperOO {
    var name: String = "Awesome developer"
}

@Observable
class AddressOO {
    var state = "Vermont"
}


struct Environment_Intro: View {
    var body: some View {
        NavigationStack {
        NavigationLink("View Developer") {
                DeveloperView()
            }
            .navigationTitle("Developer")
        }
        .environment(DeveloperOO())
        
        Environment_ReadOnly().environment(AddressOO())
        .font(.title)
    }
}

struct DeveloperView: View {
    @Environment(DeveloperOO.self) private var dev
    var body: some View {
        Text("Hello, \(dev.name)!")
        .navigationTitle("Developer View")
    }
}


struct Environment_ReadOnly: View {
    @Environment(AddressOO.self) private var addressOO

    var body: some View {
        Form {
            
            @Bindable var addressBindable = addressOO
            
            Section("One-Way Binding:") {

                Text("State: \(addressOO.state)")
                .bold()
            }
            Section("Two-Way Binding:") {
                TextField("Enter State", text: $addressBindable.state)
            }
        }
        .headerProminence(.increased)
    }
}



#Preview {
    Environment_Intro()
}

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


struct Environment_Intro: View {
    var body: some View {
        NavigationStack {
        NavigationLink("View Developer") {
                DeveloperView()
            }
            .navigationTitle("Developer")
        }
        .environment(DeveloperOO())
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


#Preview {
    Environment_Intro()
}

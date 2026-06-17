//
//  SceneStorage.swift
//  working with data
//
//  Created by Ar Kar Lin on 6/17/26.
//

import SwiftUI

struct SavingData_SceneStorage: View {
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                           NavigationLink("Enter New Data", destination: SavingData_DataEntry())
            }
            .font(.title)
            .navigationTitle("@SceneStorage")
        }
    }
}


struct SavingData_DataEntry: View {
    @SceneStorage("textInput") var textInput = ""
    @State var stateText = ""
    
    var body: some View {
        VStack(spacing: 20) {
            TextEditor(text: $textInput)
                .border(Color.pink)
                .padding()
            TextEditor(text: $stateText)
                .border(Color.pink)
                .padding()
        }
        .font(.title)
    }
}

#Preview {
    SavingData_SceneStorage()
}

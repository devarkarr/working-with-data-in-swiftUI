//
//  Observable_IgnoredPropertyView.swift
//  working with data
//
//  Created by Ar Kar Lin on 6/16/26.
//

import SwiftUI

struct Observable_IgnoredPropertyView: View {
    @State private var oo = Observable_IgnoredPropertyOO()
    var body: some View {
        List {
            Section {
                ForEach(oo.data, id: \.self) { datum in
                    Text(datum)
                }
            } header: {
                Text(oo.listName)
            } footer: {
                Text(oo.footer)
            }
            
            Section {
                Button("Update Data"){
                    oo.makeViewUpdates()
                }
                
                Button("Update Just the footer"){
                    oo.makeJustFooterUpdate()
                }
            }
        }
        .font(.title)
        .headerProminence(.increased)
    }
}

#Preview {
    Observable_IgnoredPropertyView()
}

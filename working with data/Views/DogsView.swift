//
//  DogsView.swift
//  working with data
//
//  Created by Ar Kar Lin on 6/16/26.
//
import SwiftUI

struct DogsView: View {
    @State private var oo = DogsOO()
    var body: some View {
        List(oo.data) { datum in
            Text(datum.name)
        }
        .font(.title)
        .onAppear {
            oo.fetch()
        }
    }
}


#Preview {
    DogsView()
}

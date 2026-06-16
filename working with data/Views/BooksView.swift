//
//  BooksView.swift
//  working with data
//
//  Created by Ar Kar Lin on 6/16/26.
//

import SwiftUI

struct BooksView: View {
    @State private var oo = BookOO()

    var body: some View {
        List(oo.data) { book in
            Text(book.name)
        }
        .font(.title)
        .onAppear{
            oo.fetch()
        }
        
    }
}

#Preview {
    BooksView()
}

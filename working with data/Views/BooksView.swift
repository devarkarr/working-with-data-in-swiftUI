//
//  BooksView.swift
//  working with data
//
//  Created by Ar Kar Lin on 6/16/26.
//

import SwiftUI

struct BooksView: View {
    @State private var name = "Arkar"
    @State private var names = ["Mark", "Lem", "Rod"]
    @State var oo = BookOO()

    var body: some View {
        
        EditNameSubview(name: $name)
        
        List($names, id: \.self) { $n in
            NavigationLink(n) {
            EditNameSubview(name: $n)
            }
        }
        
        List(oo.data) { book in
            Text(book.name)
        }
        .font(.title)
        .onAppear{
            oo.fetch()
        }
        
    }
}

struct EditNameSubview: View {
    @Binding var name: String
    var body: some View {
        TextField("Name", text: $name)
    }
}

#Preview {
    BooksView(oo: MockBookOO())
}

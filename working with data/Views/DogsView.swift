//
//  DogsView.swift
//  working with data
//
//  Created by Ar Kar Lin on 6/16/26.
//
import SwiftUI

struct NameData {
    var firstName = ""
    var lastName = ""
}

struct DogsView: View {
    @State private var oo = DogsOO()
    @State  var nameInfo = NameData()
    var body: some View {
        VStack {
            
            VStack {
                TextField("First Name", text: $nameInfo.firstName)
                TextField("Last Name", text: $nameInfo.lastName)
            }
            .padding()
          
            List(oo.data) { datum in
                Text(datum.name)
            }
            .font(.title)
            .onAppear {
                oo.fetch()
            }
           
            

        }
    }
}


#Preview {
    DogsView(nameInfo: NameData(firstName: "arkar",lastName: "lin"))
}

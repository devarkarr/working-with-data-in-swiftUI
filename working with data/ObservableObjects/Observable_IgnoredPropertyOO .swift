//
//  Observable_IgnoredPropertyOO .swift
//  working with data
//
//  Created by Ar Kar Lin on 6/16/26.
//

import Observation

@Observable
class Observable_IgnoredPropertyOO{
    var data = ["data1", "data2", "data3"]
    var listName = "Book List"
    
    @ObservationIgnored var footer = "3 books"
    
    func makeViewUpdates() {
        data.append("data \(data.count + 1)")
        footer = "\(data.count) books"
    }
    
    func makeJustFooterUpdate() {
        footer = "Read all \(data.count) books!"
    }
}

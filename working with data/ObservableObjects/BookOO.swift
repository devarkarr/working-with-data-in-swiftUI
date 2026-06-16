//
//  BookOO.swift
//  working with data
//
//  Created by Ar Kar Lin on 6/16/26.
//
import Observation

@Observable
class BookOO {
    var data: [BookDO] = []
    
    
    func fetch() {
        data = [
            BookDO(name: "SwiftUI Views Mastery"),
            BookDO(name: "SwiftUI Animations Mastery"),
            BookDO(name: "Combine Mastery in SwiftUI"),
            BookDO(name: "Core Data Mastery in SwiftUI"),
            BookDO(name: "SwiftData Mastery in SwiftUI"),
            BookDO(name: "Working with Data in SwiftUI")
        ]
    }
}

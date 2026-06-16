//
//  DogsOO.swift
//  working with data
//
//  Created by Ar Kar Lin on 6/16/26.
//

import Observation

@Observable
class DogsOO {
    var data : [DogDO] = []
    
    func fetch() {
        #if DEBUG
            data = [
                DogDO(name: "Barkley"),
                DogDO(name: "Max")
            ]
        #else
            data = [
                DogDO(name: "Barkley"),
                DogDO(name: "Max")
            ]
        #endif
    
    
       
    }
}

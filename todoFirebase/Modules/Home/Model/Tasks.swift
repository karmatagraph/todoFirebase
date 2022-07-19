//
//  Tasks.swift
//  todoFirebase
//
//  Created by karma on 7/19/22.
//

import Foundation

struct Tasks: Identifiable {
    var id = UUID().uuidString
    
    var title: String
    var compelted: Bool
}

#if DEBUG
let testDataTasks = [
    Tasks(title: "do this ", compelted: true),
    Tasks(title: "connec to firebase", compelted: false),
    Tasks(title: "??????", compelted: false),
    Tasks(title: "Profit", compelted: false)
]
#endif


//
//  Task.swift
//  ToDoList
//
//  Created by VegaPunk on 30/05/2023.
//

import Foundation
import CoreData

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
}

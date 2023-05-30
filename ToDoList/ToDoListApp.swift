//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by VegaPunk on 30/05/2023.
//

import SwiftUI

@main
struct ToDoListApp: App {
    let taskViewModel = TaskViewModel()
    
    var body: some Scene {
        WindowGroup {
            TaskListView(viewModel: taskViewModel)
        }
    }
}

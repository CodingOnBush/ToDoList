//
//  TaskListView.swift
//  ToDoList
//
//  Created by VegaPunk on 30/05/2023.
//

import SwiftUI

struct TaskListView: View {
    @ObservedObject var viewModel: TaskViewModel
    @State private var newTaskTitle = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter a new task", text: $newTaskTitle)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Add Task") {
                    viewModel.addTask(withTitle: newTaskTitle)
                    newTaskTitle = ""
                }
                .padding()
                
                List {
                    ForEach(viewModel.tasks) { task in
                        HStack {
                            Button(action: {
                                viewModel.toggleTaskCompletion(task: task)
                            }) {
                                Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                            }
                            .buttonStyle(PlainButtonStyle())
                            
                            Text(task.title)
                            
                            Spacer()
                            
                            Button(action: {
                                viewModel.deleteTask(task: task)
                            }) {
                                Image(systemName: "trash")
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                }
            }
            .navigationTitle("Task List")
        }
    }
}

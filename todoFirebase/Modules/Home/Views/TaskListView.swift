//
//  TaskListView.swift
//  todoFirebase
//
//  Created by karma on 7/19/22.
//

import SwiftUI

struct TaskListView: View {
    let tasks = testDataTasks
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                List(tasks) { item in
                    TaskCell(item: item)
                }
                //            Spacer()
                Button {
                    
                } label: {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Add new task")
                    }
                }
                .padding()
            }
            .navigationTitle("Tasks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}

struct TaskCell: View {
    let item: Tasks
    
    var body: some View {
        HStack {
            Image(systemName: item.compelted ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 20, height: 20 )
            Text(item.title)
        }
    }
}

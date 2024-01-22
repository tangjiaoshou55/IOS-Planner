//
//  DetailView.swift
//  exercise
//
//  Created by Johnathan Tang on 1/21/24.
//

import SwiftUI

struct DetailView: View {
    var task: DailyTask

    var body: some View {
        VStack {
            Text(task.title)
                .font(.largeTitle)
                .padding(.bottom, 20)
            Text(task.description)
            Spacer()
            
            ProgressView(value: task.progress,
                         label: { Text("Processing...") },
                         currentValueLabel: { Text(task.progress.formatted(.percent.precision(.fractionLength(0)))) })
                            .tint(.purple)
                            .padding()
            Spacer()
            
            Text("Due: \(task.dueDate, style: .date)")
                .font(.title2)
                .foregroundColor(task.theme)
        }
        .padding()
    }
}

#Preview {
    DetailView(task: DailyTask.sampleData[0])
}

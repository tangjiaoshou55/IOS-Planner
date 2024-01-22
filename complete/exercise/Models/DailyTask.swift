//
//  DailyTask.swift
//  exercise
//
//  Created by Johnathan Tang on 1/21/24.
//

import Foundation
import SwiftUI

struct DailyTask: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var dueDate: Date
    var theme: Color
    var progress: Double
    
    init(id: UUID = UUID(), title: String, description: String, dueDate: Date, theme: Color, progress: Double) {
        self.id = id
        self.title = title
        self.description = description
        self.dueDate = dueDate
        self.theme = theme
        self.progress = progress
    }
}

extension DailyTask {
    static var sampleData: [DailyTask] {
        let calendar = Calendar.current

        let task1Date = DateComponents(calendar: calendar, year: 2024, month: 1, day: 30).date ?? Date()
        let task2Date = DateComponents(calendar: calendar, year: 2022, month: 2, day: 1).date ?? Date()

        return [
            DailyTask(title: "Task 1", description: "Description 1", dueDate: task1Date, theme: .blue, progress: 0.9),
            DailyTask(title: "Task 2", description: "Description 2", dueDate: task2Date, theme: .green, progress: 0.5)
        ]
    }
    
    
}

//
//  ViewModel.swift
//  exercise
//
//  Created by Johnathan Tang on 1/21/24.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var tasks: [DailyTask]
    
    init(tasks: [DailyTask] = []) {
            self.tasks = tasks
        }
}

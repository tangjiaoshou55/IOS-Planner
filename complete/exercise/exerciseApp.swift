//
//  exerciseApp.swift
//  exercise
//
//  Created by Johnathan Tang on 1/21/24.
//

import SwiftUI

@main
struct SwiftPlannerApp: App {
    var body: some Scene {
        WindowGroup {
            MainView(viewModel: ViewModel(tasks: DailyTask.sampleData))
        }
    }
}

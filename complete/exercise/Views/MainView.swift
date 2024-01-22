//
//  MainView.swift
//  exercise
//
//  Created by Johnathan Tang on 1/21/24.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel: ViewModel

    var body: some View {
        NavigationView {
            ListView(tasks: $viewModel.tasks)
                .navigationBarTitle("Tasks")
        }
    }
}

#Preview{
    MainView(viewModel: ViewModel(tasks: DailyTask.sampleData))
}

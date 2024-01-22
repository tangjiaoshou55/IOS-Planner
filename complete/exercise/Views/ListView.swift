//
//  ListView.swift
//  exercise
//
//  Created by Johnathan Tang on 1/21/24.
//

import SwiftUI

struct ListView: View {
    @Binding var tasks: [DailyTask]

    var body: some View {
        List(tasks) { task in
            NavigationLink(destination: DetailView(task: task)) {
                CardView(task: task)
            }
        }
    }
}

#Preview {
    ListView(tasks: .constant(DailyTask.sampleData))
}

//
//  CardView.swift
//  exercise
//
//  Created by Johnathan Tang on 1/21/24.
//

import SwiftUI

struct CardView: View {
    var task: DailyTask

    var body: some View {
        VStack(alignment: .leading) {
            Text(task.title)
                .font(.headline)
                .padding(.bottom, 2)
            Text(task.description)
                .font(.body)
            Spacer()
            HStack {
                Text(task.dueDate, style: .date)
                Spacer()
                Image(systemName: "clock")
                    .foregroundColor(task.theme)
            }
        }
        .padding()
        .background(task.theme.opacity(0.5))
        .cornerRadius(10)
    }
}

var task = DailyTask.sampleData[0]

#Preview {
    CardView(task: DailyTask.sampleData[0])
}

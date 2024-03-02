//
//  CoursesView.swift
//  HCI
//
//  Created by Mohamed Boutaleb on 2/26/24.
//

import SwiftUI

struct CoursesView: View {
    
    var spacing: CGFloat = 20
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: spacing), count: 2), spacing: spacing) {
                    NavigationLink {
                        CourseView(code: "ECS 164", name: "Intro to Human-Computer Interaction")
                    } label: {
                        CourseCell(code: "ECS 164", name: "Intro to Human-Computer Interaction")
                    }
                    CourseCell(code: "ECS 152A", name: "Computer Networking")
                    CourseCell(code: "STA 131A", name: "Intro to Probability Theory")
                }
                .padding(spacing)
                .navigationTitle("Courses")
                Spacer()
            }
            .background(Color(UIColor.systemGroupedBackground))
        }
    }
}

#Preview {
    CoursesView()
}

struct CourseCell: View {
    
    var code: String
    var name: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(code)
                .font(.system(size: 40))
                .bold()
                .fontDesign(.rounded)
                .foregroundColor(.accentColor)
                .minimumScaleFactor(0.01)
            Text(name)
                .font(.headline)
                .multilineTextAlignment(.leading)
                .foregroundColor(.primary)
                .minimumScaleFactor(0.01)
            
        }
        .padding()
        .frame(maxWidth: .infinity, minHeight: 105, maxHeight: 105, alignment: .leading)
        .background(Color(UIColor.secondarySystemGroupedBackground))
        .cornerRadius(10)
    }
}

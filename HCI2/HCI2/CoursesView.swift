//
//  CoursesView.swift
//  HCI2
//
//  Created by Mohamed Boutaleb on 3/1/24.
//

import SwiftUI

struct CoursesView: View {
    
    @Environment(\.dismiss) private var dismiss
    var spacing: CGFloat = 20
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: spacing), count: 2), spacing: spacing) {
                    CourseCell(code: "ECS 164", name: "Intro to Human-Computer Interaction")
                    CourseCell(code: "ECS 152A", name: "Computer Networking")
                    CourseCell(code: "STA 131A", name: "Intro to Probability Theory")
                }
                .padding(spacing)
                .navigationTitle("Courses")
                .navigationBarTitleDisplayMode(.inline)
                Spacer()
            }
            .background(Color(UIColor.systemGroupedBackground))
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Done") { dismiss() }.bold()
                }
            }
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

//
//  CourseView.swift
//  HCI
//
//  Created by Mohamed Boutaleb on 2/26/24.
//

import SwiftUI

struct CourseView: View {
    
    var code: String
    var name: String
    
    var body: some View {
        List {
            NavigationLink {
                EmptyView()
            } label: {
                Label("Announcements", systemImage: "horn").badge(2)
            }
            NavigationLink {
                AssignmentsView()
            } label: {
                Label("Assignments", systemImage: "pencil.and.list.clipboard").badge(5)
            }

            
        }
        .navigationTitle(code)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    CourseView(code: "ECS 164", name: "Intro to Human-Computer Interaction")
}

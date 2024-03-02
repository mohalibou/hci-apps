//
//  CourseView.swift
//  HCI2
//
//  Created by Mohamed Boutaleb on 3/1/24.
//

import SwiftUI

struct CourseView: View {
    var body: some View {
        List {
            Label("Announcements", systemImage: "horn").badge(2)
            Label("Assignments", systemImage: "pencil.and.list.clipboard").badge(5)
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

//
//  AssignmentsView.swift
//  HCI2
//
//  Created by Mohamed Boutaleb on 3/1/24.
//

import SwiftUI

struct AssignmentsView: View {    
    var body: some View {
        List {
            AssignmentCell(name: "Assignment 1 - Conceptualizeing Human Computer Interaction as Design Issues and Processes", date: "Due Feb 5, 2024, 11:59 PM", status: "missing")
            
            AssignmentCell(name: "Project Proposal", date: "Due Feb 11, 2024, 11:59 PM", status: "graded")
            
            AssignmentCell(name: "Progress Report", date: "Due Mar 3, 2024, 11:59 PM", status: "")
            
            AssignmentCell(name: "Assignment 2 - Needfinding", date: "Due Mar 8, 2024, 11:59 PM", status: "submitted")
        }
        .navigationTitle("Assignments")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AssignmentsView()
}

struct AssignmentCell: View {
    
    var name: String
    var date: String
    var status: String
    
    var body: some View {
        Label {
            VStack(alignment: .leading) {
                Text(name)
                    .font(.headline)
                    .lineLimit(2)
                Text(date)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                if status == "submitted" {
                    Label("Submitted", systemImage: "checkmark")
                        .font(.caption)
                        .foregroundStyle(.green)
                } else if status == "graded" {
                    Label("Graded", systemImage: "checkmark.square")
                        .font(.caption)
                        .foregroundStyle(.green)
                } else if status == "missing" {
                    Label("Missing", systemImage: "questionmark")
                        .font(.caption)
                        .foregroundStyle(.red)
                }
            }
        } icon: {
            Image(systemName: "pencil.and.list.clipboard")
        }
    }
}

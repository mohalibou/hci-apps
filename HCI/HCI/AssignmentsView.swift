//
//  AssignmentsView.swift
//  HCI
//
//  Created by Mohamed Boutaleb on 2/26/24.
//

import SwiftUI

struct AssignmentsView: View {
    
    @State private var isShowingChat = false
    
    var body: some View {
        List {
            AssignmentCell(name: "Assignment 1 - Conceptualizeing Human Computer Interaction as Design Issues and Processes", date: "Due Feb 5, 2024, 11:59 PM", status: "missing")
            
            AssignmentCell(name: "Project Proposal", date: "Due Feb 11, 2024, 11:59 PM", status: "graded")
            
            AssignmentCell(name: "Progress Report", date: "Due Mar 3, 2024, 11:59 PM", status: "")
            
            AssignmentCell(name: "Assignment 2 - Needfinding", date: "Due Mar 8, 2024, 11:59 PM", status: "submitted")
        }
        .navigationTitle("Assignments")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    isShowingChat.toggle()
                } label: {
                    Image(systemName: "bubble")
                        .overlay(Badge(count: 5))
                }
            }
        }
        .fullScreenCover(isPresented: $isShowingChat) {
            ChatView()
        }
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

struct Badge: View {
    let count: Int

    var body: some View {
        ZStack(alignment: .topTrailing) {
            Color.clear
            Text(String(count))
                .font(.system(size: 12))
                .foregroundStyle(.white)
                .padding(5)
                .background(Color.red)
                .clipShape(Circle())
                // custom positioning in the top-right corner
                .alignmentGuide(.top) { $0[.bottom] }
                .alignmentGuide(.trailing) { $0[.trailing] - $0.width * 0.25 }
        }
    }
}

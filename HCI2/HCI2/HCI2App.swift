//
//  HCI2App.swift
//  HCI2
//
//  Created by Mohamed Boutaleb on 3/1/24.
//

import SwiftUI

@main
struct HCI2App: App {
    @State private var isShowingCourseSelectionMenu = false
    @State private var selectedTab = 1
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                TabView(selection: $selectedTab) {
                    CourseView().tag(0)
                        .navigationTitle("ECS 164")
                    ChatView().tag(1)
                        .navigationTitle("Assignments")
                    AssignmentsView().tag(2)
                        .navigationTitle("Assignments")
                }
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            isShowingCourseSelectionMenu.toggle()
                        } label: {
                            Image(systemName: "line.3.horizontal")
                        }
                    }
                }
                .sheet(isPresented: $isShowingCourseSelectionMenu) {
                    CoursesView()
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            //ChatView()
        }
    }
}

//
//  HCI3App.swift
//  HCI3
//
//  Created by Mohamed Boutaleb on 3/1/24.
//

import SwiftUI

@main
struct HCI3App: App {
    @State private var isShowingCourseSelectionMenu = false
    @State private var selectedTab = 1
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                TabView {
                    ChatView()
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

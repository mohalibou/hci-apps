//
//  ChatView.swift
//  HCI3
//
//  Created by Mohamed Boutaleb on 3/1/24.
//

import SwiftUI

struct ChatView: View {
    
    @State private var showingAssignments = true
    
    var body: some View {
        List {
            MessageView(sender: "mohamed", time: "4:20 PM", message: ["wow another assignment", "can't wait to do it"])
            MessageView(sender: "john doe", time: "4:21 PM", message: ["this class is so awesome"])
            MessageView(sender: "mohamed", time: "4:21 PM", message: ["yeah lol"])
            MessageView(sender: "jane", time: "4:23 PM", message: ["i am failing this class"])
            MessageView(sender: "nerd", time: "4:21 PM", message: ["lmao imagine failing", "good thing i'm smart af"])
            MessageView(sender: "alex", time: "4:24 PM", message: ["anyone started the project yet?"])
            MessageView(sender: "jane", time: "4:25 PM", message: ["not me :(", "still stuck on the last assignment"])
            MessageView(sender: "john doe", time: "4:26 PM", message: ["project? which project?"])
            MessageView(sender: "mohamed", time: "4:27 PM", message: ["the one due next week"])
            MessageView(sender: "nerd", time: "4:28 PM", message: ["already finished it", "easy peasy"])
            MessageView(sender: "jane", time: "4:29 PM", message: ["show off"])
            MessageView(sender: "alex", time: "4:30 PM", message: ["any tips for the rest of us?", "nerd"])
            MessageView(sender: "nerd", time: "4:31 PM", message: ["start by reading the instructions", "lol"])
            MessageView(sender: "john doe", time: "4:32 PM", message: ["instructions are overrated"])
            MessageView(sender: "mohamed", time: "4:33 PM", message: ["guess i'll start tomorrow"])
        }
        .listStyle(.plain)
        .navigationTitle("Assignments")
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $showingAssignments) {
            AssignmentsView()
                .presentationDetents([.fraction(0.1), .medium, .large])
                .presentationBackgroundInteraction(
                    .enabled(upThrough: .medium)
                )
        }
        
    }
}

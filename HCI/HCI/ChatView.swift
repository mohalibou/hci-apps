//
//  ChatView.swift
//  HCI
//
//  Created by Mohamed Boutaleb on 2/26/24.
//

import SwiftUI

struct ChatView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
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
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Close", systemImage: "xmark.circle.fill") {
                        dismiss()
                    }
                    .buttonStyle(.plain)
                    .symbolRenderingMode(.hierarchical)
                    .foregroundStyle(.secondary)
                }
            }
        }
    }
}

#Preview {
    ChatView()
}

struct MessageView: View {
    
    var sender: String
    var time: String
    var message: [String]
    
    var body: some View {
        HStack(alignment: .top) {
            Circle()
                .frame(width: 35, height: 35)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(sender).bold()
                    Text(time)
                        .foregroundStyle(.secondary)
                        .font(.caption)
                }
                
                ForEach(message, id: \.self) { line in
                    Text(line)
                    Spacer().frame(height: 6)
                }
            }
        }
        
        .listRowSeparator(.hidden)
    }
}

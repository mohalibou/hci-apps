//
//  MessageView.swift
//  HCI2
//
//  Created by Mohamed Boutaleb on 3/1/24.
//

import SwiftUI

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

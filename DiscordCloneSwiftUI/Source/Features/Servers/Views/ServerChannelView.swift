//
//  ServerChannelView.swift
//  DiscordCloneSwiftUI
//
//  Created by Bibin Jaimon on 06/01/24.
//

import SwiftUI

struct Channel: Identifiable {
    var id: Int?
    let name: String
}

struct ServerChannelView: View {
    
    var channels: [Channel] = [
        Channel(id: 0, name: "verify"),
        Channel(id: 1, name: "web3-here")
    ]
    var body: some View {
        VStack {
            HStack {
                Text("Channel name")
                    .font(.title2)
                    .bold()
                Spacer()
                Image(systemName: "ellipsis")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
            
            
            List(channels) { channel in
                
                Button {
                    
                } label: {
                    HStack {
                        Image(systemName: "number")
                        Text(channel.name)
                    }
                    
                }
                .listRowBackground(Color.discordBackground)
                
            }
            .listStyle(PlainListStyle())
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

#Preview {
    ServerChannelView()
}

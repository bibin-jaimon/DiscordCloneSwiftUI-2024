//
//  ServerChannelView.swift
//  DiscordCloneSwiftUI
//
//  Created by Bibin Jaimon on 06/01/24.
//

import SwiftUI

struct Channel: Identifiable, Equatable {
    var id: Int?
    let name: String
}

struct ServerChannelView: View {
    
    var channels: [Channel] = [
        Channel(id: 0, name: "verify"),
        Channel(id: 1, name: "web3-here")
    ]
    
    @State var selectedChannel: Channel?
    
    var body: some View {
        VStack(spacing: 1) {
            HStack {
                Text("Channel name")
                    .font(.title2)
                    .bold()
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding()
            .background(Color.init(uiColor: .systemGray4))
            .clipShape(
                .rect(
                    topLeadingRadius: 20,
                    bottomLeadingRadius: 0,
                    bottomTrailingRadius: 0,
                    topTrailingRadius: 10
                )
            )
            
            List(channels) { channel in
                
                Button {
                    selectedChannel = channel
                } label: {
                    HStack {
                        Image(systemName: "number")
                        Text(channel.name)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 6)
                    .background(
                        selectedChannel == channel ? Color.discordBackground : Color.clear
                    )
                    .clipShape(
                        RoundedRectangle(
                            cornerSize: CGSize(width: 10, height: 10)
                        )
                    )
                }
                .listRowBackground(Color.init(uiColor: .systemGray4))
                
            }
            .listStyle(PlainListStyle())
            .background(Color.init(uiColor: .systemGray4))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

#Preview {
    ServerChannelView()
}

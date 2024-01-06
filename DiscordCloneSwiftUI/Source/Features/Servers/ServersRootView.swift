//
//  ContentView.swift
//  DiscordCloneSwiftUI
//
//  Created by Bibin Jaimon on 05/01/24.
//

import SwiftUI

struct Server: Identifiable, Equatable {
    var id: Int?
    let name: String
}

struct ServersRootView: View {
    
    var servers: [Server] = [
        Server(id: 0, name: "Bibi"),
        Server(id: 1, name: "Jebin")
    ]
    
    var body: some View {
        ZStack {
            HStack(spacing: 0) {
                //1st column -  Servers
                ServerListView(servers: servers)
                    .frame(maxWidth: 85, maxHeight: .infinity, alignment: .top)
                    .background(Color.discordBackground)
                
                // 2nd column - Channels
                ServerChannelView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .background {
                        Color.discordBackground
                    }
                    .padding(.trailing, 80)
                
            }
        }
        
    }
}

#Preview {
    ServersRootView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}

extension Color {
    static var discordBlue: Color {
        Color(red: 88/255, green: 101/255, blue: 242/255)
    }
    static var discordBackground: Color {
        Color(red: 44/255, green: 44/255, blue: 46/255)
    }
}

//
//  ServerListView.swift
//  DiscordCloneSwiftUI
//
//  Created by Bibin Jaimon on 06/01/24.
//

import SwiftUI

struct ServerListView: View {
    var servers: [Server]
    @State var isSelectedServer: Server?
    
    var body: some View {
        List(servers) { server in
            HStack {
                Button(action: {
                    print(server.name)
                    isSelectedServer = server
                }, label: {
                    HStack {
                        if isSelectedServer == server {
                            Color.white
                                .frame(width: 4)
                        }
                        Text(server.name.prefix(1))
                            .font(.largeTitle)
                            .frame(width: 30, height: 30)
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(Color.discordBlue)
                            }
                    }
                    .frame(width: 85, alignment: .trailing)
                    .padding(.trailing, 18)
                })
            }
            .listRowBackground(Color.discordBackground)
            
        }
        .listStyle(PlainListStyle())
        .background(Color.discordBackground)
    }
//        .frame(maxWidth: 85, maxHeight: .infinity, alignment: .top)
//        .background(Color.discordBackground)

}

#Preview {
    var servers: [Server] = [
        Server(id: 0, name: "Bibi"),
        Server(id: 1, name: "Jebin")
    ]
    return ServerListView(servers: servers)
}

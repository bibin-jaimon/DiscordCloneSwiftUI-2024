//
//  ContentView.swift
//  DiscordCloneSwiftUI
//
//  Created by Bibin Jaimon on 05/01/24.
//

import SwiftUI

struct Servers: Identifiable {
    var id: Int?
    let name: String
}

struct ContentView: View {
    
    var servers: [Servers] = [
        Servers(id: 0, name: "Bibi"),
        Servers(id: 1, name: "Jebin")
    ]
    
    var body: some View {
        ZStack {
            HStack {
                VStack(alignment: .trailing) {
                    List(servers) { server in
                        Button(action: {
                            print(server.name)
                        }, label: {
                            Text(server.name.prefix(1))
                                .font(.largeTitle)
                                .padding()
                                .background {
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(.gray)
                                }
                                
                            
                        })
                        .frame(width: 60)

                    }
                    .listStyle(PlainListStyle())
                    
                }
                .frame(maxWidth: 80, maxHeight: .infinity, alignment: .top)
                
                
                VStack(alignment: .leading) {
                    Text("hey there")
                    
                    Text("hey there")
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .background {
                    Color(.green)
                }
                
            }
        }
        
    }
}

#Preview {
    ContentView()
    //        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}

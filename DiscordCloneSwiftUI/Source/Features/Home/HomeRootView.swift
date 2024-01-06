//
//  HomeRootView.swift
//  DiscordCloneSwiftUI
//
//  Created by Bibin Jaimon on 06/01/24.
//

import SwiftUI

struct HomeRootView: View {
    var body: some View {
        TabView {
            //setup tabbar
            Group {
                ServersRootView()
                    .tag(0)
                    .tabItem {
                        Label("Servers", systemImage: "house.fill")
                    }
                
                ProfileRootView()
                    .tag(1)
                    .tabItem {
                        Label("Profile", systemImage: "person.fill")
                    }
            }
            
            .toolbarBackground(.visible, for: .tabBar)
            
        }
        
    }
}

#Preview {
    HomeRootView()
}

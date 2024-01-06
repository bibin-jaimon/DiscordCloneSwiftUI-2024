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
            ServersRootView()
        }
    }
}

#Preview {
    HomeRootView()
}

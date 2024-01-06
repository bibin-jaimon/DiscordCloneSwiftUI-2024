//
//  ChatView.swift
//  DiscordCloneSwiftUI
//
//  Created by Bibin Jaimon on 06/01/24.
//

import SwiftUI

struct ChatView: View {
    @Binding var isVisibleView: Bool

    var body: some View {
        VStack {
            Button {
                withAnimation {
                    isVisibleView.toggle()
                }
                
            } label: {
                Text("<Back")
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding()
    }
}

#Preview {
    @State var isVisible: Bool = false
    return ChatView(isVisibleView: $isVisible)
}

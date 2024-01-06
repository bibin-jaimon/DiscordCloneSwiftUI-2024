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
            HStack {
                Button {
                    withAnimation {
                        isVisibleView.toggle()
                    }
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                }
                Image(systemName: "number")
                Text("channel-name")
            }
            .padding()
            
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        
        .background(Color.init(uiColor: .systemGray4))
        .padding(.top, isVisibleView ? 0 : 1)
        .padding(.horizontal, 1)
//        .clipShape(
//            .rect(
//                topLeadingRadius: 10,
//                bottomLeadingRadius: 0,
//                bottomTrailingRadius: 0,
//                topTrailingRadius: 10
//            )
//        )
    }
}

#Preview {
    @State var isVisible: Bool = false
    return ChatView(isVisibleView: $isVisible)
}

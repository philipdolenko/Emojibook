//
//  SamllEmojiWidgetView.swift
//  Emojibook WidgetExtension
//
//  Created by Philip Dolenko on 02.02.2021.
//

import SwiftUI

struct SamllEmojiWidgetView: View {
    
    let emojiDetails: EmojiDetails
    
    var body: some View {
        ZStack {
            Color(UIColor.systemIndigo)
            VStack{
                Text(emojiDetails.emoji)
                    .font(.system(size: 56))
                Text(emojiDetails.name)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding(.top, 5)
                    .padding([.leading,.trailing])
                    .foregroundColor(.white)
            }
        }
        .widgetURL(emojiDetails.url)
    }
}

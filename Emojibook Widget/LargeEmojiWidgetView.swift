//
//  LargeEmojiWidgetView.swift
//  Emojibook WidgetExtension
//
//  Created by Philip Dolenko on 03.02.2021.
//

import SwiftUI

struct LargeEmojiWidgetView: View {
    
    let emojiDetails: EmojiDetails
    
    var body: some View {
        ZStack {
            Color(.systemIndigo)
            VStack {
                Text(emojiDetails.name)
                    .bold()
                    .font(.title)
                Text(emojiDetails.emoji)
                    .font(.system(size: 60))
                    .padding()
                Text(emojiDetails.description)
                    .font(.title3)
            }
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding()
        }
        .widgetURL(emojiDetails.url)
    }
}

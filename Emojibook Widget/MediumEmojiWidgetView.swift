//
//  MediumEmojiWidgetView.swift
//  Emojibook WidgetExtension
//
//  Created by Philip Dolenko on 03.02.2021.
//

import SwiftUI

struct MediumEmojiWidgetView: View {
    let emojiDetails: EmojiDetails
    
    var body: some View {
        ZStack {
            Color(UIColor.systemIndigo)
            HStack {
                Text(emojiDetails.emoji)
                    .font(.system(size:56))
                    .padding()
                VStack(alignment: .leading) {
                    Text(emojiDetails.name)
                        .font(.headline)
                    Text(emojiDetails.description)
                }
                .foregroundColor(.white)
                .padding([.top, .bottom, .trailing])
            }
        }
        .widgetURL(emojiDetails.url)
    }
}


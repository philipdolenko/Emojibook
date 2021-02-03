//
//  EmojiWidgetView.swift
//  Emojibook WidgetExtension
//
//  Created by Philip Dolenko on 03.02.2021.
//

import SwiftUI
import WidgetKit


struct EmojiWidgetView: View {
    
    @Environment(\.widgetFamily) var family: WidgetFamily
    
    let emojiDetails: EmojiDetails
    
    var body: some View {
        switch family {
        case .systemSmall:
            SamllEmojiWidgetView(emojiDetails: emojiDetails)
        case .systemMedium:
            MediumEmojiWidgetView(emojiDetails: emojiDetails)
        case .systemLarge:
            LargeEmojiWidgetView(emojiDetails: emojiDetails)
        default:
            EmptyView()
        }
    }
}

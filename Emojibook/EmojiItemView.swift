//
//  EmojiItemView.swift
//  Emojibook
//
//  Created by Philip Dolenko on 02.02.2021.
//

import SwiftUI

struct EmojiItemView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    let emoji: String
    let emojiName: String
    
    var body: some View {
        Text("\(emoji) - \(emojiName)")
            .font(.largeTitle)
            .padding([.top, .bottom])
            .foregroundColor(colorScheme == .dark ? .white : .black)
    }
}

//
//  EmojiDetails.swift
//  Emojibook
//
//  Created by Philip Dolenko on 02.02.2021.
//

import Foundation

public struct EmojiDetails {
    let emoji: String
    let name: String
    let description: String
    let url: URL?
    
    init(emoji: String, name: String, description: String) {
        self.emoji = emoji
        self.name = name
        self.description = description
        self.url = URL(string: "emoji://\(name.filter { !$0.isWhitespace })")
    }
}

extension EmojiDetails : Identifiable {
    public var id: String {
        emoji
    }
}

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
}

extension EmojiDetails : Identifiable {
    public var id: String {
        emoji
    }
}

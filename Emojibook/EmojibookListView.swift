//
//  ContentView.swift
//  Emojibook
//
//  Created by Philip Dolenko on 02.02.2021.
//

import SwiftUI

struct EmojibookListView: View {
    
    let emojiData = EmojiProvider.all()
    
    @State private var visibleEmojiDetails: EmojiDetails?
    
    var body: some View {
        NavigationView {
            List {
                ForEach(emojiData, content: { emojiDetails in
                    Button(action: {
                        visibleEmojiDetails = emojiDetails
                    }, label: {
                        EmojiItemView(
                            emoji: emojiDetails.emoji,
                            emojiName: emojiDetails.name
                        )
                    })
                })
            }
            .foregroundColor(.black)
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Emojibook")
        }
        .onOpenURL { url in
            guard let emojiDetails = emojiData.first(where: {$0.url == url}) else { return }
            visibleEmojiDetails = emojiDetails
        }
        .sheet(item: $visibleEmojiDetails) { emojiDetails in
            EmojiDetailsView(emojiDetails: emojiDetails)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            EmojibookListView()
            EmojibookListView()
                .preferredColorScheme(.dark)
        }
    }
}

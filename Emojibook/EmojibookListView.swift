//
//  ContentView.swift
//  Emojibook
//
//  Created by Philip Dolenko on 02.02.2021.
//

import SwiftUI

struct EmojibookListView: View {
    
    let emojiData = EmojiProvider.all()
    
    @State private var showingDetail: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(emojiData, content: { emojiDetails in
                    Button(action: {
                        showingDetail.toggle()
                    }, label: {
                        EmojiItemView(
                            emoji: emojiDetails.emoji,
                            emojiName: emojiDetails.name
                        )
                    })
                    .sheet(isPresented: $showingDetail, content: {
                        EmojiDetailsView(emojiDetails: emojiDetails)
                    })
                })
            }
            .foregroundColor(.black)
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Emojibook")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojibookListView()
    }
}

//
//  ContentView.swift
//  EmojiLovers
//
//  Created by Jeffrey Scranton on 5/11/25.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 👇🏻, 😂, 🎉, 🚀
}

struct ContentView: View {
    
    @State var selection: Emoji = .🎉
    
    var body: some View {
        NavigationView {
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))
                
                Picker("Select Emoji", selection: $selection){
                    ForEach(Emoji.allCases, id: \.self){ emoji in
                        Text(emoji.rawValue)
                            .font(.system(size: 30))
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            .navigationBarTitle("Emoji Lovers")
            .navigationBarTitleDisplayMode(.inline)
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  SingleViewScranton
//
//  Created by Jeffrey Scranton on 5/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination:ViewTwo()) {
                    
                    Text("View Two")
                        .font(.title)
                        .foregroundColor(.blue)
                        .frame(width: 300, height: 50)
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

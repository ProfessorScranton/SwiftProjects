//
//  ViewTwo.swift
//  SingleViewScranton
//
//  Created by Jeffrey Scranton on 5/15/25.
//

import SwiftUI

struct ViewTwo: View {
    @State var showingAlert : Bool = false
    
    var body: some View {
        VStack {
            Button("Click Me!") {
                showingAlert = true
            }
            .alert(isPresented: $showingAlert) {
                Alert(
                title: Text("Howdy!"),
                message: Text("You clicked me!"),
                dismissButton: .default(Text("OK")))
            }
        }
    }
}

#Preview {
    ViewTwo()
}

//
//  ContentView.swift
//  WatchCountdown WatchKit Extension
//
//  Created by Michael Datz on 2/15/21.
//

import SwiftUI

struct ContentView: View {
    @State var changed = false;
    @State var text = "Hello, World!"
    var body: some View {
        VStack {
            Text("CLDM Lab")
            Divider()
            Button("Say yes") {
                changed.toggle()
                if changed {
                    text = "Good job!"
                }
            }
            Button(text) {
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


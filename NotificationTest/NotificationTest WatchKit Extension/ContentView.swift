//
//  ContentView.swift
//  NotificationTest WatchKit Extension
//
//  Created by Michael Datz on 2/14/21.
//

import SwiftUI

struct ContentView: View {
    @State var changed = false
    @State var colors: [Color] = [.orange, .pink , .yellow]
    
    var body: some View {
        ScrollView {
            ScrollViewReader { value in
                Button("Change Color") {
                    changed.toggle()
                    
                    if changed {
                        colors = [.red, .green, .blue]
                    } else {
                        colors = [.orange, .pink , .yellow]
                    }
                }

                ForEach(0..<10) { i in
                    Text("# \(i)")
                        .frame(width: 100, height: 100)
                        
                        .background(colors[i % colors.count]).cornerRadius(50)
                        .id(i)
                        .padding()
                        
                }.onAppear() {
                    value.scrollTo(0)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

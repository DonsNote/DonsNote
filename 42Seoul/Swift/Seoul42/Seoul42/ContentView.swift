//
//  ContentView.swift
//  Seoul42
//
//  Created by Kimdohyun on 2023/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!\(sum(a:7,b:6))")
            Text("\(sum(a: 8, b: 10))")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

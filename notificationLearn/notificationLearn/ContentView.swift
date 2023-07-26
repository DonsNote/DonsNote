//
//  ContentView.swift
//  notificationLearn
//
//  Created by Kimdohyun on 2023/07/19.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: notificationLearnDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(notificationLearnDocument()))
    }
}

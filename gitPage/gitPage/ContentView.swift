//
//  ContentView.swift
//  gitPage
//
//  Created by Kimdohyun on 2023/07/11.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: gitPageDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(gitPageDocument()))
    }
}

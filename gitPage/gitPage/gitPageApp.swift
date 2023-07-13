//
//  gitPageApp.swift
//  gitPage
//
//  Created by Kimdohyun on 2023/07/11.
//

import SwiftUI

@main
struct gitPageApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: gitPageDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}

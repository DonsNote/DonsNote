//
//  notificationLearnApp.swift
//  notificationLearn
//
//  Created by Kimdohyun on 2023/07/19.
//

import SwiftUI

@main
struct notificationLearnApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: notificationLearnDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}

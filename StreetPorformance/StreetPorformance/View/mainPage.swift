//
//  mainPage.swift
//  StreetPorformance
//
//  Created by Kimdohyun on 2023/07/03.
//

import Foundation
import SwiftUI

struct mainPage: View {
    var body: some View {
        ZStack {
            MapView()
                .ignoresSafeArea()
        }
    }
}

struct mainPage_preview: PreviewProvider {
    static var previews: some View {
        mainPage()
    }
}

//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Donghwan Kim on 2021/07/25.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.data
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}

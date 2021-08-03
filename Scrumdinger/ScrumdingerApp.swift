//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Donghwan Kim on 2021/07/25.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.data)
        }
    }
}

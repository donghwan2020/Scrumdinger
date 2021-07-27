//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Donghwan Kim on 2021/07/27.
//

import SwiftUI

struct DailyScrum {
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var color: Color
}

extension DailyScrum {
    static var data: [DailyScrum] {
        [
            DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10, color: Color("Design")),
            DailyScrum(title: "AppDev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthInMinutes: 5, color: Color("AppDev")),
            DailyScrum(title: "WebDev", attendees: ["Chella", "Chris", "Christina", "Eden", "Donny", "Karla", "Aga", "Chad", "Jenn", "Sarah"], lengthInMinutes: 1, color: Color("WebDev"))
        ]
    }
}

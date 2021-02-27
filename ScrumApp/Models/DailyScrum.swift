//
//  DailyScrum.swift
//  ScrumApp
//
//  Created by Andy Lochan on 2/26/21.
//

import SwiftUI

struct DailyScrum: Identifiable {
    var id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var color: Color
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, color: Color) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.color = color 
    }
}

//MARK: - Test Data
extension DailyScrum {
    static var data: [DailyScrum] {
        [
            DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "John"], lengthInMinutes: 10, color: .blue),
            DailyScrum(title: "App Dev", attendees: ["Katie", "Jay", "Eunha", "Luis"], lengthInMinutes: 5, color: .red),
            DailyScrum(title: "Web Dev", attendees: ["Chris", "Joe", "Eden", "Nicole", "Sarah", "Alice", "Chad"], lengthInMinutes: 1, color: .purple)
        ]
    }
}

//
//  DailyScrum.swift
//  ScrumApp
//
//  Created by Andy Lochan on 2/26/21.
//

import SwiftUI

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var color: Color
    var history: [History]

    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, color: Color, history: [History] = []) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.color = color
        self.history = history
    }
}

//MARK: - Test Data - Default set for ScrumApp.swift @State scrums
extension DailyScrum {
    static var data: [DailyScrum] {
        [
            DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "John"], lengthInMinutes: 10, color: .yellow),
            DailyScrum(title: "App Dev", attendees: ["Katie", "Jay", "Eunha", "Luis"], lengthInMinutes: 5, color: .orange),
            DailyScrum(title: "Web Dev", attendees: ["Chris", "Joe", "Eden", "Nicole", "Sarah", "Alice", "Chad"], lengthInMinutes: 1, color: .purple)
        ]
    }
}

//MARK: - Editable Data
extension DailyScrum {
    struct Data {
        var title: String = ""
        var attendees: [String] = []
        var lengthInMinutes: Double = 5.0
        var color: Color = .random
    }
    
    //Update editable data struct with the existing data 
    var data: Data {
        return Data(title: title, attendees: attendees, lengthInMinutes: Double(lengthInMinutes), color: color)
    }
    
    mutating func update(from data: Data) {
        title = data.title
        attendees = data.attendees
        lengthInMinutes = Int(data.lengthInMinutes)
        color = data.color
    }
}

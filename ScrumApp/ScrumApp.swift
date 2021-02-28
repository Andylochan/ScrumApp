//
//  ScrumAppApp.swift
//  ScrumApp
//
//  Created by Andy Lochan on 2/26/21.
//

import SwiftUI

@main
struct ScrumApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.data)
            }
        }
    }
}

//
//  ScrumAppApp.swift
//  ScrumApp
//
//  Created by Andy Lochan on 2/26/21.
//

import SwiftUI

@main
struct ScrumApp: App {
    //Source for truth for @Bindings
    @ObservedObject private var data = ScrumData()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $data.scrums) {
                    data.save()
                }
            }
            .onAppear {
                data.load()
            }
        }
    }
}

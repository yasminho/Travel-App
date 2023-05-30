//
//  Second_AppApp.swift
//  Second_App
//
//  Created by Yasmin Ho on 2023/05/29.
//

import SwiftUI

@main
struct Second_AppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView(location: Locations().primary)
            }
        }
    }
}

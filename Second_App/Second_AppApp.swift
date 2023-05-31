//
//  Second_AppApp.swift
//  Second_App
//
//  Created by Yasmin Ho on 2023/05/29.
//

import SwiftUI

@main
struct Second_AppApp: App {
    @StateObject var locations=Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView{
                    ContentView(location: locations.primary)
                }
                .tabItem{
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                
                NavigationView{
                    worldview()
                }
                .tabItem{
                    Image(systemName: "globe")
                    Text("Map")
                }
                NavigationView{
                    Tips()
                }
                .tabItem{
                    Image(systemName:"list.bullet")
                    Text("Tips")
                }
                
                
                
                
                
            }
            .environmentObject(locations)
            
        }
    }
}

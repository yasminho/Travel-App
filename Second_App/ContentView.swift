//
//  ContentView.swift
//  Second_App
//
//  Created by Yasmin Ho on 2023/05/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("highlands")
                .resizable()
                .scaledToFit()
            
            Text("The Highlands")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

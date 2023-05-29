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
            Image(systemName: "pencil")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

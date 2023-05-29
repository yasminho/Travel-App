//
//  ContentView.swift
//  Second_App
//
//  Created by Yasmin Ho on 2023/05/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{VStack {
            Image(systemName: "pencil")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello")
        }
            VStack {
                Image(systemName: "book")
                    .padding(50)
                    .scaledToFit()
                    .foregroundColor(Color.green)
                    .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                    
                
                Text("Book")
                    .font(.title)
                    .padding(-5)
                    .fontWeight(.bold)
                    
            }
            .padding(-2)
        }
    
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

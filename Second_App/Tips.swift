//
//  Tips.swift
//  Second_App
//
//  Created by Yasmin Ho on 2023/05/31.
//

import SwiftUI

struct Tips: View {
    let tips:[Tip]
    
    init() {
        let url=Bundle.main.url(forResource: "tips", withExtension: "json")!
        
        let data=try! Data(contentsOf: url)
        
        tips=try! JSONDecoder().decode([Tip].self, from: data)
        
    }
    
    
    
    
    
    var body: some View {
        List(tips, id:\.text, children:\.children) { tip in
            if tip.children==nil {
                Text(tip.text)
            }
            else {
                Label(tip.text, systemImage: "quote.bubble")
                    .font(.headline)
            }
        }
        .navigationTitle("Tips")
    }
}
           
            
         

struct Tips_Previews: PreviewProvider {
    static var previews: some View {
        Tips()
    }
}

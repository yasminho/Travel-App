//
//  Tip.swift
//  Second_App
//
//  Created by Yasmin Ho on 2023/05/31.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]? //array can be used recursively //optionality: data might be there or might not be there
    
}

//
//  RecipeHighligts.swift
//  Recipe List App
//
//  Created by ohjiwoo on 2021/04/05.
//

import SwiftUI

struct RecipeHighligts: View {
    
    var allHighlights = ""
    
    init(highlights:[String]) {
        
        // Loop through the highlights and build the string
        for index in 0..<highlights.count {
            
            // If this is the last item, don't add a comma
            if index == highlights.count - 1 {
                allHighlights += highlights[index]
            }
            else {
                allHighlights += highlights[index] + ", "
            }
            
        }
    }
    
    var body: some View {
        Text(allHighlights)
    }
}

struct RecipeHighligts_Previews: PreviewProvider {
    static var previews: some View {
        RecipeHighligts(highlights: ["text", "text2", "test3"])
            .font(Font.custom("Avenir", size:15))
    }
}

//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by ohjiwoo on 2021/04/02.
//

import Foundation

class RecipeModel : ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Create an instance of data service and get the data
        self.recipes = DataService.getLocalData()
    
    }
}

//
//  Recipe.swift
//  Recipe List App
//
//  Created by ohjiwoo on 2021/04/02.
//

import Foundation

class Recipe : Identifiable, Decodable {
    var id : UUID?
    var name : String
    var featured : Bool
    var image: String
    var description: String
    var prepTime: String
    var cookTime : String
    var servings : Int
    var highlights:[String]
    var ingredients:[Ingredient]
    var directions:[String]
    
}

class Ingredient: Identifiable, Decodable {
    var id: UUID?
    var name: String
    var num: Int?
    var denom: Int?
    var unit: String?
}

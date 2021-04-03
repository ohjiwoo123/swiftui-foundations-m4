//
//  Recipe_List_App.swift
//  Recipe List App
//
//  Created by ohjiwoo on 2021/04/02.
//

import SwiftUI

@main
struct Recipe_List_App: App {
    var body: some Scene {
        WindowGroup {
            RecipeTabView()
                .environmentObject(RecipeModel())
        }
    }
}

//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by ohjiwoo on 2021/04/03.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
       
        TabView {
            Text("Featured View")
                .tabItem {
                    VStack {
                        Image(systemName:"star.fill")
                        Text("Featured")
                    }
                }
            
            RecipeListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
        }
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}

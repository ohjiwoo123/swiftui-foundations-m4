//
//  ContentView.swift
//  Recipe List App
//
//  Created by ohjiwoo on 2021/04/02.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var model: RecipeModel
    
    var body: some View {
        
        NavigationView {
            
            VStack (alignment : .leading) {
            Text("All Recipes")
                .bold()
                .padding(.leading)
                .font(Font.custom("Avenir Heavy", size:24))
                ScrollView {
                    LazyVStack(alignment:.leading) {
                        ForEach(model.recipes) { r in
                
                NavigationLink(
                    destination: RecipeDetailView(recipe:r),
                    label: {
                        
                        // Mark : Row Item
                        HStack(spacing :20) {
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: .center)
                                .clipped()
                                .cornerRadius(5)
                            
                            VStack (alignment: .leading) {
                            Text(r.name)
                                .foregroundColor(.white)
                                .font(Font.custom("Avenir Heavy", size:16))
                                RecipeHighligts(highlights:
                                                    r.highlights)
                                    .foregroundColor(.white)
                                    
                            }
                    }
                    })
                    
                   
                }
                    }
                }
            }
            .navigationBarHidden(true)
            .padding(.leading)
        }
    }
}


struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
            .environmentObject(RecipeModel())
    }
}

//
//  RecipeTabView.swift
//  MyRecipeApp
//
//  Created by Serezha on 01.04.2023.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        
        TabView {
            
            Text("Featured view")
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            ContentView()
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

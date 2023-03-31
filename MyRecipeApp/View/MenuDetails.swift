//
//  MenuDetails.swift
//  MyRecipeApp
//
//  Created by Serezha on 20.03.2023.
//

import SwiftUI

struct MenuDetails: View {
    var recipe:Recipe
    var body: some View {
        VStack {
            ScrollView {
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .font(.title)
                        .padding(.bottom, 5)
                        .foregroundColor(.pink)
                    
                    ForEach(recipe.ingredients, id: \.self) { item in
                        Text("• " + String(item))
                    }
                    Divider()
                        
                    Text("Directions")
                        .font(.title)
                        .padding(.bottom, 5)
                        .foregroundColor(.pink)
                    
                    ForEach(0..<recipe.directions.count, id: \.self) { index in
                        Text(String(index+1) + ". " + recipe.directions[index])
                            .padding(.bottom, 5)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal)
            }
            .navigationBarTitle(recipe.name)

            }
        }
    }

struct MenuDetails_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = RecipeModel()
        
        MenuDetails(recipe: model.recipes[0])
    }
}

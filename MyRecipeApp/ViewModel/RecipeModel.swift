//
//  File.swift
//  MyRecipeApp
//
//  Created by Serezha on 20.03.2023.
//

import Foundation

class RecipeModel: ObservableObject {
    var recipes = [Recipe]()
    
    init() {
        recipes = ResourcesForMenu.getJsonData()
    }
}

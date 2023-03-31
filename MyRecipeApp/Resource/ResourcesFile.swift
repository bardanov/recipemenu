//
//  File.swift
//  MyRecipeApp
//
//  Created by Serezha on 20.03.2023.
//

import Foundation

struct ResourcesForMenu {
    
    static func getJsonData() -> [Recipe] {
     
        let stringData = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        guard stringData != nil else {
            return [Recipe]()
        }
            
        let url = URL(filePath: stringData!)
        
            do {
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do {
                    let finalData = try decoder.decode([Recipe].self, from: data)
                    
                    for i in finalData {
                        i.id = UUID()
                    }
                    return finalData
                }
            }
            catch {
                print(error)
            }
     
        return [Recipe]()
    }
}

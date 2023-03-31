//
//  ContentView.swift
//  MyRecipeApp
//
//  Created by Serezha on 20.03.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = RecipeModel()
    var body: some View {
        NavigationView {
            List(model.recipes) { r in
                NavigationLink {
                    MenuDetails(recipe: r)
                } label: {
                    VStack {
                        HStack{
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 89, height: 89)
                                .clipped()
                                .cornerRadius(5)
                            Text(r.name)
                                .font(.title2)
                                .foregroundColor(.pink)
                        }
                    }
                }
            }
            .navigationTitle("My recipes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

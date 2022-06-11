//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Tin Tran on 11/06/2022.
//

import SwiftUI

struct RecipeCardView: View {
    // MARK: - PROPERTY
    let recipe: Recipe
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(.white)
                                .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                                .padding(.top, 22)
                                .padding(.trailing, 20)
                            Spacer()
                        }
                    }
            )
            
            VStack(alignment: .leading, spacing: 12) {
                // MARK: - TITLE
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                // MARK: - HEADLINE
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                
                // MARK: - RATES
                HStack(alignment: .center, spacing: 5) {
                    ForEach(0..<recipe.rating, id:\.self) {_ in
                        Image(systemName: "star.fill")
                            .font(.body)
                            .foregroundColor(.yellow)
                    }
                }
                
                // MARK: - COOKING
                HStack(alignment: .center, spacing: 12) {
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "person.2")
                        Text("Serves: \(recipe.serves)")
                    }
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "clock")
                        Text("Prep: \(recipe.preparation)")
                    }
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "flame")
                        Text("Cooking: \(recipe.cooking)")
                    }
                }
                .font(.footnote)
                .foregroundColor(.gray)
            }
            .padding()
            .padding(.bottom, 12)
        } //: VSTACK
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
            
    }
}

// MARK: - PREVIEW
struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipeData[0])
            .previewLayout(.sizeThatFits)
    }
}

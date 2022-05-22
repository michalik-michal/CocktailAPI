//
//  HomeView.swift
//  CocktailAPI
//
//  Created by MacOS on 22/05/2022.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel: HomeViewModel
    
    init(){
        self.viewModel = HomeViewModel()
    }
    
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(viewModel.cocktails){cocktail in
                        CocktailRowView(cocktail: cocktail)
                }
            }
            .padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

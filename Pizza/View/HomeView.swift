//
//  HomeView.swift
//  Pizza
//
//  Created by Валерий Игнатьев on 14.07.2021.
//

import SwiftUI

struct HomeView: View {
    @State private var animateOn: Bool = false
    @State private var pizza: [AddIngredient] = []
    
    var body: some View {
        ZStack(alignment: .center) {
            
            CuttingBoard()
            
            PizzaImage(name: "margarita")
            
            
            AddIngredient(name: "cheese", animateOn: $animateOn)

            AddIngredient(name: "Сhampignen", animateOn: $animateOn)
            
            ButtonApp {
                
                animateOn.toggle()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

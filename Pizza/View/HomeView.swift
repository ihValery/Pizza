//
//  HomeView.swift
//  Pizza
//
//  Created by Валерий Игнатьев on 14.07.2021.
//

import SwiftUI

struct HomeView: View {
    @State private var animateOn: Bool = false
    
    var body: some View {
        ZStack(alignment: .center) {
            
            CuttingBoard()
            
            PizzaImage(name: "margarita")
            
            AddIngredient(name: "cheese", animateOn: $animateOn)
            
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

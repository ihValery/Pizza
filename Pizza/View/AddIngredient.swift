//
//  AddIngredient.swift
//  Pizza
//
//  Created by Валерий Игнатьев on 15.07.2021.
//

import SwiftUI

struct AddIngredient: View {
    let name: String
    @Binding var animateOn: Bool
    
    var body: some View {
        ZStack {
            Image("\(name)1")
                .resizable()
                .scaledToFill()
                .scaleEffect(animateOn ? 1 : 2)
                .animation(.easeIn(duration: 0.5))
                .opacity(animateOn ? 1 : 0)
                .animation(.linear(duration: 0.1))
            
            Image("\(name)2")
                .resizable()
                .scaledToFill()
                .scaleEffect(animateOn ? 1 : 10)
                .animation(.easeIn(duration: 0.7))
                .opacity(animateOn ? 1 : 0)
                .animation(.linear(duration: 0.1))

            Image("\(name)3")
                .resizable()
                .scaledToFill()
                .scaleEffect(animateOn ? 1 : 6)
                .animation(.easeIn(duration: 0.4))
                .opacity(animateOn ? 1 : 0)
                .animation(.linear(duration: 0.1))
            
            Image("\(name)4")
                .resizable()
                .scaledToFill()
                .scaleEffect(animateOn ? 1 : 4)
                .animation(.easeIn(duration: 0.6))
                .opacity(animateOn ? 1 : 0)
                .animation(.linear(duration: 0.1))
        }
        .frame(width: 300, height: 300)
    }
}

struct AddIngredient_Previews: PreviewProvider {
    static var previews: some View {
        AddIngredient(name: "cheese", animateOn: .constant(true))
    }
}

//
//  PizzaImage.swift
//  Pizza
//
//  Created by Валерий Игнатьев on 15.07.2021.
//

import SwiftUI

struct PizzaImage: View {
    let name: String
    
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFill()
            .frame(width: 270, height: 270)
    }
}

struct PizzaImage_Previews: PreviewProvider {
    static var previews: some View {
        PizzaImage(name: "margarita")
    }
}

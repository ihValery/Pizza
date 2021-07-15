//
//  ButtonApp.swift
//  Pizza
//
//  Created by Валерий Игнатьев on 15.07.2021.
//

import SwiftUI

struct ButtonApp: View {
    let action: () -> ()
    
    var body: some View {
        VStack {
            Spacer()
            Button(action: action) {
                Text("Добавить")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(Capsule()
                                    .fill(Color(UIColor.brown)))
            }
        }
        .padding(.horizontal)
    }
}

struct ButtonApp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonApp(action: {})
    }
}


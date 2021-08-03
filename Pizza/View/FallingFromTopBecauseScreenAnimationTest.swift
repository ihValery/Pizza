//
//  FallingFromTopBecauseScreenAnimationTest.swift
//  Pizza
//
//  Created by Валерий Игнатьев on 02.08.2021.
//

import SwiftUI

extension AnyTransition {
    static var fallingFromTopBecauseScreen: AnyTransition {
        let insertion = AnyTransition.opacity
            .animation(.easeIn(duration: 0.5))
            .combined(with: .scale(scale: 20)
            .animation(.easeInOut(duration: 0.7)))
        
        let removal = AnyTransition.opacity
        
        return asymmetric(insertion: insertion, removal: removal)
    }
}

struct FallingFromTopBecauseScreenAnimationTest: View {
    @State private var array: [Int] = []
    @State private var animateOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                ForEach(array, id: \.self) { item in
                    Text("\(item)")
                }
            }
            Spacer()
            
            ZStack {
                ForEach(array, id: \.self) { item in
                    Text("\(item)")
                        .font(.system(size: 200))
                }
                .transition(.fallingFromTopBecauseScreen)
            }
            
            Spacer()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    NumberBttn(number: 1) { deleteLastDuplicateOrAppend(number: 1) }
                    NumberBttn(number: 2) { deleteLastDuplicateOrAppend(number: 2) }
                    NumberBttn(number: 3) { deleteLastDuplicateOrAppend(number: 3) }
                    NumberBttn(number: 4) { deleteLastDuplicateOrAppend(number: 4) }
                    NumberBttn(number: 5) { deleteLastDuplicateOrAppend(number: 5) }
                    NumberBttn(number: 6) { deleteLastDuplicateOrAppend(number: 6) }
                    NumberBttn(number: 7) { deleteLastDuplicateOrAppend(number: 7) }
                    NumberBttn(number: 8) { deleteLastDuplicateOrAppend(number: 8) }
                }
                .padding()
            }
        }
    }
    
    private func deleteLastDuplicateOrAppend(number: Int) {
        //при .opacity и .scale - использовать явную анимацию withAnimation {} стр. 214
        withAnimation(.easeInOut) {
            if let last = array.last, last == number {
                array.removeLast()
            } else {
                array.append(number)
            }
        }
    }
}

struct Test123_Previews: PreviewProvider {
    static var previews: some View {
        FallingFromTopBecauseScreenAnimationTest()
    }
}

struct NumberBttn: View {
    let number: Int
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Circle().fill(Color.black)
                .overlay(
                    Text("\(number)")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .padding()
                )
                .frame(width: 70, height: 70)
        })
    }
}

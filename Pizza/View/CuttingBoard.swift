//
//  CuttingBoard.swift
//  Pizza
//
//  Created by Валерий Игнатьев on 15.07.2021.
//

import SwiftUI

struct CuttingBoard: View {
    var body: some View {
        Image("cuttingBoard")
            .resizable()
            .scaledToFill()
            .frame(width: 310, height: 310)
    }
}

struct CuttingBoard_Previews: PreviewProvider {
    static var previews: some View {
        CuttingBoard()
    }
}

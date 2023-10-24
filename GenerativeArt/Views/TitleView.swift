//
//  TitleView.swift
//  GenerativeArt
//
//  Created by Tom Wu on 2023-10-24.
//

import SwiftUI

enum Coin: Int {
    case heads = 1
    case tails = 2
    
    static func flip() -> Coin {
        let decision = Bool.random()
        
        if decision == true {
            return .heads
        } else {
            return .tails
        }
    }
}

struct TitleView: View {
    //MARK: stored properties
    let coinFlipOne = Int.random(in: 1...2)
    //MARK: Computer properties
    var body: some View {
        ZStack {
            if coinFlipOne == .heads {
                TriangleTopRight()
                .stroke(.blue)
                .fill(.blue)
                .aspectRatio(1.0, contentMode: .fit)
                    
                TriangleBottomLeft()
                .stroke(.blue)
                .fill(.blue)
                .aspectRatio(1.0, contentMode: .fit)
            } else {
                TriangleTopLeft()
                    .stroke(.blue)
                    .fill(.blue)
                    .aspectRatio(1.0, contentMode: .fit)
                
                TriangleBottomRight()
                    .stroke(.blue)
                    .fill(.blue)
                    .aspectRatio(1.0, contentMode: .fit)
            }
        }
        .padding()
    }
}

#Preview {
    TitleView()
}

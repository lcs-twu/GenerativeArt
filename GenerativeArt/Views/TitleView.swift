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
    
    //determine diagonal
    let coinFlipOne = Coin.tails //temporary to test colors
    
    //determine whether top or bottom triangle gets filled with color 1
    let coinFlipTwo = Coin.flip()
    
    //choosing markers
    let markerOne = Color.blue
    let markerTwo = Color.orange
    
    //decide on colors
    let flipForColor = Coin.tails
    
    //MARK: Computer properties
    
    //set colors based on coin flip
    var colorOne: Color {
        return flipForColor == .heads ? markerOne : markerTwo
    }
    
    var colorTwo: Color {
        return flipForColor == .heads ? markerTwo : markerOne
    }
    
    var body: some View {
        ZStack {
            if coinFlipOne == .heads {
                TriangleTopRight()
                .stroke(.black)
                //color one or clear
                .fill(coinFlipTwo == .heads ? colorOne : .clear)
                .aspectRatio(1.0, contentMode: .fit)
                    
                TriangleBottomLeft()
                .stroke(.black)
                .fill(coinFlipTwo == .tails ? colorOne : .clear)
                .aspectRatio(1.0, contentMode: .fit)
            } else {
                TriangleTopLeft()
                    .stroke(.black)
                    .fill(coinFlipTwo == .heads ? colorOne : .clear)
                    .aspectRatio(1.0, contentMode: .fit)
                
                TriangleBottomRight()
                    .stroke(.black)
                    .fill(coinFlipTwo == .tails ? colorOne : .clear)
                    .aspectRatio(1.0, contentMode: .fit)
            }
        }
        .padding()
    }
}

#Preview {
    TitleView()
}

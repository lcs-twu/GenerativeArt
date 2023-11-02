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
    let coinFlipOne = Coin.flip() //temporary to test colors
    
    //determine whether top or bottom triangle gets filled with color 1
    let coinFlipTwo = Coin.flip()
    
    //choosing markers
    let markerOne = Color.blue
    let markerTwo = Color.orange
    
    //decide on colors
    let flipForColor = Coin.flip()
    
    //determine the final fill color
    let coinFlipThree = Coin.flip()
    
    //MARK: Computer properties
    
    //set colors based on coin flip
    var colorOne: Color {
        return flipForColor == .heads ? markerOne : markerTwo
    }
    
    var colorTwo: Color {
        return flipForColor == .heads ? markerTwo : markerOne
    }
    
    //determine fill color for remaining triangle
    var remainingTriangleFillColor: Color {
        return coinFlipThree == .heads ? colorTwo : .clear
//        if coinFlipThree == .heads {
//            return colorTwo
//        } else {
//            return .clear
//        }
    }
    
    var body: some View {
        ZStack {
            if coinFlipOne == .heads {
                TriangleTopRight()
                .stroke(.black)
                //color one or clear
                .fill(coinFlipTwo == .heads ? colorOne : remainingTriangleFillColor)
                .aspectRatio(1.0, contentMode: .fit)
                    
                TriangleBottomLeft()
                .stroke(.black)
                .fill(coinFlipTwo == .tails ? colorOne : remainingTriangleFillColor)
                .aspectRatio(1.0, contentMode: .fit)
            } else {
                TriangleTopLeft()
                    .stroke(.black)
                    .fill(coinFlipTwo == .heads ? colorOne : remainingTriangleFillColor)
                    .aspectRatio(1.0, contentMode: .fit)
                
                TriangleBottomRight()
                    .stroke(.black)
                    .fill(coinFlipTwo == .tails ? colorOne : remainingTriangleFillColor)
                    .aspectRatio(1.0, contentMode: .fit)
            }
        }
    }
}

#Preview {
    TitleView()
}

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
    let coinFlipOne = Coin.heads //temporary to test colors
    //choosing markers
    let markerOne = Color.blue
    let markerTwo = Color.orange
    
    //decide on colors
    let flipForColor = Coin.flip()
    
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
                .fill(colorOne)
                .aspectRatio(1.0, contentMode: .fit)
                    
                TriangleBottomLeft()
                .stroke(.black)
                .fill(colorTwo)
                .aspectRatio(1.0, contentMode: .fit)
            } else {
                TriangleTopLeft()
                    .stroke(.black)
                    .fill(.clear)
                    .aspectRatio(1.0, contentMode: .fit)
                
                TriangleBottomRight()
                    .stroke(.black)
                    .fill(.clear)
                    .aspectRatio(1.0, contentMode: .fit)
            }
        }
        .padding()
    }
}

#Preview {
    TitleView()
}

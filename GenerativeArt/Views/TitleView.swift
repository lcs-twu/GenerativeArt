//
//  TitleView.swift
//  GenerativeArt
//
//  Created by Tom Wu on 2023-10-24.
//

import SwiftUI

//create shape structure


struct TitleView: View {
    var body: some View {
        VStack {
//            let coinFlipOne = Int.random(in: 1...2)
//            
//            if coinFlipOne == 1{
                TriangleTopRight()
                .stroke(.blue)
                .fill(.blue)
                .aspectRatio(1.0, contentMode: .fit)
                    
//            } else {
                TriangleBottomLeft()
                .stroke(.blue)
                .fill(.blue)
                .aspectRatio(1.0, contentMode: .fit)
//            }
            TriangleTopLeft()
                .stroke(.blue)
                .fill(.blue)
                .aspectRatio(1.0, contentMode: .fit)
            TriangleBottomRight()
                .stroke(.blue)
                .fill(.blue)
                .aspectRatio(1.0, contentMode: .fit)
        }
        .padding()
    }
}

#Preview {
    TitleView()
}

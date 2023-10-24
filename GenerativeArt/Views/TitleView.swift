//
//  TitleView.swift
//  GenerativeArt
//
//  Created by Tom Wu on 2023-10-24.
//

import SwiftUI

//create shape structure
struct TriangleTopRight: Shape {
    
    func path(in rect: CGRect) -> Path {
        //make an empty path
        var path = Path()
        //define path
        path.move(to: CGPoint(x: rect.maxX, y: rect.minY))
        //side one
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        //side two
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        //side three
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        //return the path
        return path
    }
    
}

struct TriangleBottomLeft: Shape {
    func path(in rect: CGRect) -> Path {
        //make an empty path
        var path = Path()
        //define path
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        //side one
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        //side two
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        //side three
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        //return the path
        return path
    }
}


struct TitleView: View {
    var body: some View {
        VStack {
            let coinFlipOne = Int.random(in: 1...2)
            
            if coinFlipOne == 1{
                TriangleTopRight()
                //make the shape to be a square
                    .aspectRatio(1.0, contentMode: .fit)
            } else {
                TriangleBottomLeft()
                    .aspectRatio(1.0, contentMode: .fit)
            }
        }
        .padding()
    }
}

#Preview {
    TitleView()
}

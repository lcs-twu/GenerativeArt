//
//  TitleView.swift
//  GenerativeArt
//
//  Created by Tom Wu on 2023-10-24.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack {
            Rectangle()
            //make the shape to be a square
                .aspectRatio(1.0, contentMode: .fit)
        }
    }
}

#Preview {
    TitleView()
}

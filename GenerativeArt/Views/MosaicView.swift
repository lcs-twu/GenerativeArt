//
//  MosaicView.swift
//  GenerativeArt
//
//  Created by Tom Wu on 2023-10-24.
//

import SwiftUI

struct MosaicView: View {
    var body: some View {
        Grid(horizontalSpacing: 0, verticalSpacing: 0) {
            ForEach(1..<4){i in
                GridRow {
                    ForEach(1..<4){i in
                        TitleView()
                    }
                }
            }
        }
    }
}

#Preview {
    MosaicView()
}

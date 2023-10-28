//
//  MosaicView.swift
//  GenerativeArt
//
//  Created by Tom Wu on 2023-10-24.
//

import SwiftUI

struct MosaicView: View {
    //MARK: Stored properties
    let columns = 7
    let rows = 4
    
    //MARK: Computed properties
    var body: some View {
        VStack {
            Grid(horizontalSpacing: 0, verticalSpacing: 0) {
                //the number of rows
                ForEach(0..<rows, id: \.self){j in
                    GridRow {
                        //repeat within a row
                        ForEach(0..<columns, id: \.self){i in
                            TitleView()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    MosaicView()
}

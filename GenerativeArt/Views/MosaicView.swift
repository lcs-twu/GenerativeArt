//
//  MosaicView.swift
//  GenerativeArt
//
//  Created by Tom Wu on 2023-10-24.
//

import SwiftUI

struct MosaicView: View {
    //MARK: Stored properties
    @State var columns = 7.0
    @State var rows = 4.0
    
    //MARK: Computed properties
    var body: some View {
        VStack {
            Grid(horizontalSpacing: 0, verticalSpacing: 0) {
                //the number of rows
                ForEach(0..<Int(rows), id: \.self){j in
                    GridRow {
                        //repeat within a row
                        ForEach(0..<Int(columns), id: \.self){i in
                            TitleView()
                        }
                    }
                }
            }
            HStack{
                Text("columns")
                Slider(value: $columns, in: 1...10, step: 1.0)
            }
            HStack{
                Spacer(minLength: 22)
                Text("rows")
                Slider(value: $rows, in: 1...10, step: 1.0)
            }
        }
    }
}

#Preview {
    MosaicView()
}

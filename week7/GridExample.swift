//
//  GridExample.swift
//  SwiftUi_Tutorial
//
//  Created by sumin Kong on 11/29/25.
//

import SwiftUI

struct GridExample: View {
    var body: some View {
        Grid(horizontalSpacing: 1, verticalSpacing: 1) {
            GridRow {
                Text("Row 1")
                    .frame(width: 100)
                ForEach(0..<2) { _ in
                    RoundedRectangle(cornerRadius: 4)
                    .fill(Color.red)
                    .frame(width: 40, height: 40)
                }
            }
            GridRow {
                Text("Row 2")
                ForEach(0..<5) { _ in
                    RoundedRectangle(cornerRadius: 4)
                    .fill(Color.green)
                    .frame(width: 40, height: 40)
                }
            }
            GridRow {
                Text("Row 3")
                ForEach(0..<3) { _ in
                    RoundedRectangle(cornerRadius: 4)
                    .fill(Color.blue)
                    .frame(width: 40, height: 40)
                }
            }
        }
    }
}

#Preview {
    GridExample()
}

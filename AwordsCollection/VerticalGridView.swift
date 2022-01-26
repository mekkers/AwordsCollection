//
//  VerticalGridView.swift
//  AwordsCollection
//
//  Created by igor mekkers on 26.01.2022.
//

import SwiftUI

struct VerticalGridView: View {
    
    let data = (1...100).map { "Item \($0)" }
    let columns = [GridItem(.adaptive(minimum: 80))]
    
    var body: some View {
        ScrollView {
           LazyVGrid(columns: columns,
                     spacing: nil) {
               ForEach(data, id: \.self) { item in
                   Text(item)
               }
           }
        }
    }
}

struct VerticalGridView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalGridView()
    }
}

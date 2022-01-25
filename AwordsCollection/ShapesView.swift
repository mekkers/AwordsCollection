//
//  ShapesView.swift
//  AwordsCollection
//
//  Created by igor mekkers on 25.01.2022.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    GradientRectangles(widht: 250, height: 250)
                    PathView(widht: 250, height: 250)
                    CurvesView(widht: 250, height: 250)
                }
            }
            .navigationBarTitle("Shapes")
        }
     
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}

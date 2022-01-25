//
//  GradientRectangles.swift
//  AwordsCollection
//
//  Created by igor mekkers on 25.01.2022.
//

import SwiftUI

struct GradientRectangles: View {
    let widht: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0..<3) { iteration in
                    Rectangle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [.green, .blue]),
                                           startPoint: UnitPoint(x: 0, y: 1),
                                           endPoint: UnitPoint(x: 1, y: 0)
                            )
                        )
                        .scaleEffect(0.7)
                        .rotationEffect(.degrees(Double(iteration) * 60))
                }
                Image(systemName: "airplane")
                    .resizable()
                    .rotationEffect(.degrees(-90))
                    .opacity(0.5)
                    .scaleEffect(0.7)
            }
            
        }
        .frame(width: widht, height: height)
    }
}

struct GradientRectangles_Previews: PreviewProvider {
    static var previews: some View {
        GradientRectangles(widht: 200, height: 200)
    }
}

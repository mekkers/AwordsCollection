//
//  MyBitView.swift
//  AwordsCollection
//
//  Created by igor mekkers on 26.01.2022.
//

import SwiftUI

struct MyBitView: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            ZStack {
                Circle()
                    .fill(
                        RadialGradient(
                            gradient: Gradient(colors: [.orange, .yellow]),
                            center: .center,
                            startRadius: size * 0.3,
                            endRadius: size * 0.5)
                        )
                    .scaleEffect(0.95)
                
                Circle()
                    .scale(0.95)
                    .stroke(Color.orange, lineWidth: 5)
                
                HexStarView(color: .red, lineWidth: 3)
                    .opacity(0.8)
                
                Image(systemName: "bitcoinsign.circle")
                    .resizable()
                    .foregroundColor(.white)
                    .opacity(1)
                    .scaleEffect(0.7)
            }
        }
        .frame(width: width, height: height)
    }
}

struct MyBitView_Previews: PreviewProvider {
    static var previews: some View {
        MyBitView(width: 330, height: 330)
    }
}

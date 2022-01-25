//
//  ContentView.swift
//  AwordsCollection
//
//  Created by igor mekkers on 25.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showShape = true
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                HStack {
                    Text(showShape ? "Hide Shape" : "Show Shape")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(showShape ? 2 : 1)
                        .rotationEffect(.degrees(showShape ? 0 : 180))
                }
            }
            Spacer()
            
            if showShape {
                GradientRectangles(widht: 250, height: 250)
                    .animation(.default)
                    .transition(.transition)
            }

            Spacer()
        }
        .font(.headline)
        .padding()
    }
    private func buttonAction() {
        withAnimation {
            showShape.toggle()
        }
    }
}

extension AnyTransition {
   static var transition: AnyTransition {
        let insertion = AnyTransition.move(edge: .leading)
            .combined(with: .scale)
        let removal = AnyTransition.scale
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

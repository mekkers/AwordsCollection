//
//  ShapesView.swift
//  AwordsCollection
//
//  Created by igor mekkers on 25.01.2022.
//

import SwiftUI

//struct ShapesView: View {
//    let awards = Award.getAwards()
//
//    var activeAward: [Award] {
//        awards.filter { $0.awarded }
//    }
//
//    var body: some View {
//        NavigationView {
//            CustomGridView(items: activeAward, columns: 2) { award in
//                VStack {
//                    award.awardView
//                    Text(award.title)
//                }
//            }
//            .navigationBarTitle("Your awards: \(activeAward.count)")
//        }
//    }
//}
struct ShapesView: View {
    let awards = Award.getAwards()
    let columns = [GridItem(.adaptive(minimum: 160, maximum: 200))]

    var activeAward: [Award] {
        awards.filter { $0.awarded }
    }

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(activeAward, id: \.title) { award in
                        VStack {
                            award.awardView
                            Text(award.title)
                        }
                    }
                }
            }
            .navigationBarTitle("Your awards: \(activeAward.count)")
        }
    }
}


struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}

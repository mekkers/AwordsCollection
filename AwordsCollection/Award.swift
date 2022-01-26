//
//  Award.swift
//  AwordsCollection
//
//  Created by igor mekkers on 26.01.2022.
//

import SwiftUI

struct Award {
    let awardView: AnyView
    let title: String
    let awarded: Bool
    
    static func getAwards() -> [Award] {
        [
            Award(
                awardView: AnyView(GradientRectangles(widht: 160, height: 160)),
                title: "GradientRectangles",
                awarded: true
            ),
            Award(
                awardView: AnyView(PathView(widht: 160, height: 160)),
                title: "PathView",
                awarded: true
            ),
            Award(
                awardView: AnyView(CurvesView(widht: 160, height: 160)),
                title: "CurvesView",
                awarded: true
            ),
            Award(
                awardView: AnyView(MyBitView(width: 160, height: 160)),
                title: "MyBitView",
                awarded: true
            )
        ]
    }
}

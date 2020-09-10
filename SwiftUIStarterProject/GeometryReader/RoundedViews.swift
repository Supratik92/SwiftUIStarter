//
//  RoundedViews.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 10/09/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

struct RoundedViews: View {
    var viewColor: Color = .black
    var leftLength: CGFloat = 0.0
    var leftRadius: CGFloat = 0.0
    var backLength: CGFloat = 0.0
    var backRight: CGFloat = 0.0

    var body: some View {
        GeometryReader { geometry in
            Path { path in

                let geometryWidth = geometry.size.width
                let geometryHeight = geometry.size.height

                // We make sure the radius does not exceed the bounds dimensions
                let leftRadius = min(min(self.leftRadius, geometryHeight/2), geometryWidth/2)
                let leftLength = min(min(self.leftLength, geometryHeight/2), geometryWidth/2)
                let broadLength = min(min(self.backLength, geometryHeight/2), geometryWidth/2)
                let broadRight = min(min(self.backRight, geometryHeight/2), geometryWidth/2)

                path.move(to: CGPoint(x: geometryWidth / 2.0, y: 0))
                path.addLine(to: CGPoint(x: geometryWidth - leftRadius, y: 0))
                path.addArc(center: CGPoint(x: geometryWidth - leftRadius, y: leftRadius), radius: leftRadius, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: geometryWidth, y: geometryHeight - broadRight))
                path.addArc(center: CGPoint(x: geometryWidth - broadRight, y: geometryHeight - broadRight), radius: broadRight, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: broadLength, y: geometryHeight))
                path.addArc(center: CGPoint(x: broadLength, y: geometryHeight - broadLength), radius: broadLength, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: leftLength))
                path.addArc(center: CGPoint(x: leftLength, y: leftLength), radius: leftLength, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
                }
                .fill(self.viewColor)
        }
    }
}

struct RoundedViews_Previews: PreviewProvider {
    static var previews: some View {
        RoundedViews()
    }
}

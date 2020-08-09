//
//  PathView.swift
//  AwordsCollectionApp
//
//  Created by Alexey Efimov on 05.08.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct PathView: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let size = min(geometry.size.width, geometry.size.height)
                let nearLine = size * 0.1
                let farLine = size * 0.9
                
                path.move(to: CGPoint(x: size / 2 + nearLine, y: nearLine))
                path.addLine(to: CGPoint(x: farLine, y: farLine))
                path.addLine(to: CGPoint(x: nearLine, y: farLine))
                path.addLine(to: CGPoint(x: size / 2 - nearLine, y: nearLine))
            }
            .fill(Color(red: 0.4, green: 0.4, blue: 0.4))
            
            Path { path in
                let size = min(geometry.size.width, geometry.size.height)
                let nearLine = size * 0.1
                let farLine = size * 0.9
                let middle = size / 2
                
                path.move(to: CGPoint(x: middle, y: farLine))
                path.addLine(to: CGPoint(x: middle, y: nearLine))
            }
            .stroke(Color.white,
                    style: StrokeStyle(
                        lineWidth: 3,
                        dash: [geometry.size.height / 20])
            )
            
            Image(systemName: "car.fill")
                .resizable()
                .scaleEffect(0.2)
                .foregroundColor(.white)
                .offset(x: -geometry.size.width / 7.25)
        }
    }
}

struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathView()
            .frame(width: 200, height: 200)
    }
}

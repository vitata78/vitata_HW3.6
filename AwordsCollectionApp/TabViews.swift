//
//  TabViews.swift
//  AwordsCollectionApp
//
//  Created by Alexey Efimov on 05.08.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct TabViews<Content: View>: View {
	
	@State private var tabSelection = 1
	@State var shapeView: Content
	
    var body: some View {
        TabView(selection: $tabSelection) {
			ShapeView(shapeView: $shapeView)
                .tabItem {
					Image(systemName: "stop.fill")
                    Text("Shape View")
                }
				.tag(1)
            
			ShapesView(tabSelection: $tabSelection, shapeView: $shapeView)
                .tabItem {
					Image(systemName: "square.grid.2x2.fill")
                    Text("Shapes Library")
                }
				.tag(2)	
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabViews(shapeView:GradientRectangles())
    }
}

//
//  ShapesView.swift
//  AwordsCollectionApp
//
//  Created by Alexey Efimov on 05.08.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct ShapesView<Content: View>: View {
	
	
	@Binding var tabSelection: Int
	@Binding var shapeView: Content
	
	var body: some View {
		NavigationView {
			VStack {

				ScrollView {
					
					Button(action: {
						self.tabSelection = 1
						self.shapeView = GradientRectangles() as! Content
					} ) {
						GradientRectangles()
							.frame(width: 250, height: 250)
					}
					
					Button(action: {
						self.tabSelection = 1
						self.shapeView = PathView() as! Content
					} ) {
						PathView()
							.frame(width: 250, height: 250)
					}
					
					CurvesView()
						.frame(width: 250, height: 250)
				}
				
			}.navigationBarTitle("Shapes")
			
		}
	}
}


struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
		ShapesView(tabSelection: .constant(2), shapeView: .constant(GradientRectangles()))
    }
}

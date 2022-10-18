//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Dexter Kim on 10/17/22.
//

import SwiftUI

struct CategoryRow: View {
    var categoryItem: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryItem)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
    
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {                        
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        CategoryRow(
            categoryItem: landmarks[0].category.rawValue,
            items: Array(landmarks.prefix(upTo: 4))
        )
    }
}

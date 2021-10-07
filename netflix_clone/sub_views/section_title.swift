//
//  section_title.swift
//  netflix_clone
//
//  Created by MAC on 10/7/21.
//

import Foundation
import SwiftUI



struct SectionTitle: View {
    var title: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Text(title)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Spacer()
        }
        .padding(
            EdgeInsets(top: 20, leading: 16, bottom: 4, trailing: 16)
        )
    }
}

//
//  film_card.swift
//  netflix_clone
//
//  Created by MAC on 10/7/21.
//

import Foundation
import SwiftUI



struct FilmCard: View {
    var film: Film
    var isLarge: Bool = false
    
    var height: CGFloat {
        return isLarge ? 280 : 160
    }
    var width: CGFloat {
        return isLarge ? 200 : 140
    }
    
    var body: some View {
        ZStack {
            
            // image
            Image(film.image)
                .resizable()
                .frame(width: width, height: height, alignment: .center)
                .cornerRadius(4)
            
            // linear gradient
            LinearGradient(
                colors: [
                    .black.opacity(0.0),
                    .black.opacity(0.0),
                    .black.opacity(0.1),
                    .black.opacity(0.3),
                    .black.opacity(0.5),
                    .black.opacity(0.8),
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(4)
            
            // data
            VStack {
                Spacer()
                
                HStack(alignment: .top) {
                    Text(film.name)
                        .font(isLarge ? .title : .title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white.opacity(0.8))
                }
            }
            .padding(6)
            
        }
        .frame(width: width, height: height, alignment: .center)
    }
}

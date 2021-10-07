//
//  trending_film_view.swift
//  netflix_clone
//
//  Created by MAC on 10/7/21.
//

import Foundation
import SwiftUI


struct TrendingFildCard: View {
    let film: Film
    let number: Int
    
    var body: some View {
        ZStack(alignment: .leading) {
            
            Image(film.image)
                .resizable()
                .cornerRadius(10)
                .frame(width: 160, height: 220, alignment: .center)
            
            LinearGradient(
                colors: [
                    .black.opacity(0.0),
                    .black.opacity(0.0),
                    .black.opacity(0.1),
                    .black.opacity(0.3),
                    .black.opacity(0.5),
                    .black.opacity(0.9),
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(10)
            
            // name
            VStack(alignment: .center) {
                Spacer()
                Spacer()
                
                HStack(alignment: .center) {
                    Text(film.name)
                        .font(.system(size: 32))
                        .fontWeight(.bold)
                        .foregroundColor(.white.opacity(0.8))
                        .lineLimit(2)
                        .padding()
                }
                
                Spacer()
                
            }
            
            // number
            VStack(alignment: .trailing) {
                Spacer()
                Spacer()
                
                
                Text("\(number)")
                    .font(.system(size: 108))
                    .fontWeight(.heavy)
                    .foregroundColor(.white.opacity(0.5))
                    .offset(x: -20, y: 20)
                
            }
            .zIndex(2)
            
        }
        .frame(width: 160, height: 220, alignment: .center)
    }
}

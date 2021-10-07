//
//  home_page.swift
//  netflix_clone
//
//  Created by MAC on 10/7/21.
//

import Foundation
import SwiftUI



struct HomePage: View {
    @StateObject private var filmsViewModel: FilmsViewModel = FilmsViewModel()
    
    
    var body: some View {
        ZStack(alignment: .leading) {
            
            Color.black.opacity(0.9).ignoresSafeArea(.all)
            
            
            ScrollView {
                
                // top bar
                HStack(alignment: .center, spacing: 12) {
                    
                    Text("NetFlix")
                        .foregroundColor(.red)
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Spacer()
                    
                    Image(systemName: "tv")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
                        .foregroundColor(.white)
                    
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
                        .foregroundColor(.white)
                    
                }
                .padding(
                    EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16)
                )
                
                
                // trending
                SectionTitle(title: "Trending in Tanzania")
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(filmsViewModel.films) { film in
                            TrendingFildCard(
                                film: film,
                                number: 1
                            )
                        }
                    }
                }
                   
                // top picks for you
                SectionTitle(title: "Top Picks For You")
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .center, spacing: 8) {
                        ForEach(filmsViewModel.films) { film in
                            FilmCard(
                                film: film,
                                isLarge: true
                            )
                        }
                    }
                }
                
                // Recommended For You
                SectionTitle(title: "Recommended For You")
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .center, spacing: 8) {
                        ForEach(filmsViewModel.films) { film in
                            FilmCard(
                                film: film,
                                isLarge: false
                            )
                        }
                    }
                }
                
            }
            
        }
    }
}

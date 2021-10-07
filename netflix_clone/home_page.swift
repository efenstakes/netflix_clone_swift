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
            
            Color.black.opacity(0.7).ignoresSafeArea(.all)
            
            
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
                
                
            }
            
        }
    }
}

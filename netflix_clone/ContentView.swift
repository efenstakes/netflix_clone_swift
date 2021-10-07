//
//  ContentView.swift
//  netflix_clone
//
//  Created by MAC on 10/7/21.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().barTintColor = UIColor(Color.black)
    }
    
    
    var body: some View {
        
        TabView {
            
            HomePage()
                .tabItem {
                    VStack {
                        Image(systemName: "house.fill")
                            .resizable()
                            .frame(width: 16, height: 16, alignment: .center)
                            .foregroundColor(.white)
                        Text("Home")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                }
            
            
            Text("Coming Soon Page")
                .padding()
                .tabItem {
                    VStack {
                        Image(systemName: "play.tv")
                            .resizable()
                            .frame(width: 16, height: 16, alignment: .center)
                            .foregroundColor(.white)
                        Text("Coming Soon")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                }
            
            
            Text("Downloads Page")
                .padding()
                .tabItem {
                    VStack {
                        Image(systemName: "arrow.down.circle")
                            .resizable()
                            .frame(width: 16, height: 16, alignment: .center)
                            .foregroundColor(.white)
                        Text("Downloads")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                }
            
            
        }
        .accentColor(.white)
        .onAppear() {
            UITabBar.appearance().tintColor = .black
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  films_view_model.swift
//  netflix_clone
//
//  Created by MAC on 10/7/21.
//

import Foundation



class FilmsViewModel: ObservableObject {
    @Published var films = [Film]()
    
    
    init() {
        self.films = filmsData
    }
    
}

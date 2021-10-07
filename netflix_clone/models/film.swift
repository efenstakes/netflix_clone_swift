//
//  film.swift
//  netflix_clone
//
//  Created by MAC on 10/7/21.
//

import Foundation


enum FilmType {
    case movie, series
}
enum FilmGenre {
    case drama, comedy, documentary, fiction, nonFiction
}

struct Film: Identifiable {
    var id: String
    var name: String
    var type: FilmType = .movie
    var genre: FilmGenre = .drama
    var image: String
}


let filmsData: [Film] = [

    Film(
        id: UUID().uuidString,
        name: "Lupin",
        type: .series,
        genre: .drama,
        image: "2"
    ),
    Film(
        id: UUID().uuidString,
        name: "Friends",
        type: .series,
        genre: .comedy,
        image: "3"
    ),
    Film(
        id: UUID().uuidString,
        name: "Sonic HedgeHog",
        type: .movie,
        genre: .drama,
        image: "4"
    ),
    Film(
        id: UUID().uuidString,
        name: "Family Reunion",
        type: .series,
        genre: .comedy,
        image: "5"
    ),
    Film(
        id: UUID().uuidString,
        name: "How I Met Your Mother",
        type: .series,
        genre: .comedy,
        image: "6"
    ),
    Film(
        id: UUID().uuidString,
        name: "Blood & Water",
        type: .series,
        genre: .drama,
        image: "7"
    ),
    Film(
        id: UUID().uuidString,
        name: "Good Doctor",
        type: .series,
        genre: .drama,
        image: "8"
    ),
    Film(
        id: UUID().uuidString,
        name: "Lucifer",
        type: .series,
        genre: .drama,
        image: "9"
    )
    
]

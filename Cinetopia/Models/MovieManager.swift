//
//  MovieManager.swift
//  Cinetopia
//
//  Created by Tiago de Freitas Costa on 2024-07-01.
//

import Foundation

// singleton class
class MovieManager {
    
    //MARK: - Attrtibutes
    
    static let shared = MovieManager()
    var favoriteMovies: [Movie] = []
    
    //MARK: - Init
    
    private init() { }
    
    //MARK: - Class methods
    
    func add(_ movie: Movie) {
        if favoriteMovies.contains(where: {$0.id == movie.id}) {
            remove(movie)
        } else {
            favoriteMovies.append(movie)
        }
    }
    
    func remove(_ movie: Movie) {
        if let index = favoriteMovies.firstIndex(where: {$0.id == movie.id}) {
            favoriteMovies.remove(at: index)
        }
    }
}

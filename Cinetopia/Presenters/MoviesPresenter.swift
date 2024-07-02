//
//  MoviesPresenter.swift
//  Cinetopia
//
//  Created by Tiago de Freitas Costa on 2024-07-01.
//

import UIKit

protocol MoviesPresenterToViewControllerProtocol: AnyObject {
    func setViewController(_ viewController: MoviesViewControllerToPresenterProtocol)
    func viewDidLoad()
    func viewDidAppear()
}

protocol MoviesPresenterToViewProtocol: AnyObject {
    func didSelect(movie:Movie)
    func didSelectFavoriteButton(_ movie: Movie)
    func didSearchText(_ searchBar: UISearchBar, textDidChange searchText: String, _ movies: [Movie], _ filteredMovies: [Movie])
}

    //MARK: - MoviesPresenterToViewControllerProtocol

class MoviesPresenter: MoviesPresenterToViewControllerProtocol {
    
    //MARK: - Attributes
    
    private var controller: MoviesViewControllerToPresenterProtocol?
    private var view: MoviesViewProtocol?
    private var movieService: MovieService = MovieService()
    
    //MARK: - Init
    
    init(view: MoviesViewProtocol) {
        self.view = view
    }
    
    //MARK: - MoviesPresenterToViewControllerProtocol
    
    func setViewController(_ viewController: any MoviesViewControllerToPresenterProtocol) {
        self.controller = viewController
    }
    
    func viewDidLoad() {
        view?.setPresenter(self)
        Task {
            await fetchMovies()
        }
    }
    
    func viewDidAppear() {
        
    }
    
    //MARK: Class methods
    
    private func fetchMovies() async {
        // Call the funtion getMovies when it is ready
        do {
            let movies = try await movieService.getMovies()
            view?.setupView(with: movies)
            view?.reloadData()
        } catch (let error) {
            print(error)
        }
    }
}

extension MoviesPresenter: MoviesPresenterToViewProtocol {
    func didSelect(movie: Movie) {
        
    }
    
    func didSelectFavoriteButton(_ movie: Movie) {
        
    }
    
    func didSearchText(_ searchBar: UISearchBar, textDidChange searchText: String, _ movies: [Movie], _ filteredMovies: [Movie]) {
        
    }
    
    
}

//
//  FavoriteMoviesViewController.swift
//  Cinetopia
//
//  Created by Tiago de Freitas Costa on 2024-06-29.
//

import UIKit

class FavoriteMoviesViewController: UIViewController {
    
    //MARK: UI - Components
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 27, bottom: 10, right: 27)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(FavoriteMovieCollectionViewCell.self, forCellWithReuseIdentifier: "FavoriteMovieCollectionViewCell")
        collectionView.register(FavoriteCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "FavoriteMovieCollectionViewCell")
        collectionView.dataSource = self
        collectionView.delegate = self
        
        return collectionView
    }()
    
    //MARK: UI - View life cycle
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: true)
        view.backgroundColor = .background
        setupConstraints()
        
    }
    
    //MARK: - Class methods
    
    private func setupConstraints(){
        view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }
    
}

extension FavoriteMoviesViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FavoriteMovieCollectionViewCell", for: indexPath) as?
                FavoriteMovieCollectionViewCell else {
            fatalError("Error to create FavoriteMovieCollectionViewCell")
        }
        
        let currentMovie = movies[indexPath.item]
        cell.setupView(currentMovie)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            guard let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "FavoriteMovieCollectionViewCell", for: indexPath) as? FavoriteCollectionReusableView else {
                fatalError("error to create collectionView header")
            }
            
            headerView.setupTitle("My favorite movies")
            
            return headerView
        }
        
        return UICollectionReusableView()
    }
}

extension FavoriteMoviesViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/3, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 50)
    }
}

#Preview {
  FavoriteMoviesViewController()
}

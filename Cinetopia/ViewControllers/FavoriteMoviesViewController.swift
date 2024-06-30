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
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .yellow
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
        
    }()
    
    //MARK: UI - View life cycle
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
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

#Preview {
  FavoriteMoviesViewController()
}

//
//  MovieTableViewCell.swift
//  Cinetopia
//
//  Created by Tiago de Freitas Costa on 2024-06-25.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    private lazy var moviePosterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 12
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    
    private lazy var movieTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var movieReleaseDateLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.font = .systemFont(ofSize: 18)
        label.textColor = .white.withAlphaComponent(0.75)
        return label
    }()
    
    func configureCell(movie: Movie) {
        movieTitleLabel.text = movie.title
        moviePosterImageView.image = UIImage(named: movie.image)
        movieReleaseDateLabel.text = "Release: \(movie.releaseDate)"
        
    }
        
    private func addSubViews(){
        addSubview(moviePosterImageView)
        addSubview(movieTitleLabel)
        addSubview(movieReleaseDateLabel)
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            moviePosterImageView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            moviePosterImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant:16),
            moviePosterImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            moviePosterImageView.widthAnchor.constraint(equalToConstant: 100),
            
            movieTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -16),
            movieTitleLabel.leadingAnchor.constraint(equalTo: moviePosterImageView.trailingAnchor, constant: 16),
            movieTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            movieReleaseDateLabel.topAnchor.constraint(equalTo: movieTitleLabel.bottomAnchor, constant: 8),
            movieReleaseDateLabel.leadingAnchor.constraint(equalTo: moviePosterImageView.trailingAnchor, constant: 16)
        ])
    }
    
    // as we are using UITableView, there is no viewDidLoad. For this reason we have to us init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubViews()
        setupConstraints()
        backgroundColor = .background
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

/*
#Preview{
    MovieTableViewCell()
}*/

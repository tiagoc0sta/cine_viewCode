//
//  MovieTableViewCell.swift
//  Cinetopia
//
//  Created by Tiago de Freitas Costa on 2024-06-25.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    private lazy var moviePosterImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage.avatar)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 12
        return imageView
    }()
    
    private func addSubViews(){
        addSubview(moviePosterImageView)
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            moviePosterImageView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            moviePosterImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant:16),
            moviePosterImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16)
            
        
        ])
    }
    
    // as we are using UITableView, there is no viewDidLoad. For this reason we have to us init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubViews()
        setupConstraints()
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


#Preview{
    MovieTableViewCell()
}

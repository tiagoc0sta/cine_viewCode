//
//  Movie.swift
//  Cinetopia
//
//  Created by Tiago de Freitas Costa on 2024-06-24.
//

import Foundation

struct Movie: Decodable {
    let id: Int
    let title: String
    let image: String
    let synopsis: String
    let rate: Double
    let releaseDate: String
}

let movies: [Movie] = [
    Movie(id: 1, title: "Avatar", image: "Avatar", synopsis: "On the lush alien world of Pandora live the Na'vi, beings who appear primitive but are highly evolved. Because the planet's environment is poisonous, human/Na'vi hybrids, called Avatars, must link to human minds to allow for free movement on Pandora. Jake Sully (Sam Worthington), a paralyzed former Marine, becomes mobile again through one such Avatar and falls in love with a Na'vi woman (Zoe Saldana). As a bond with her grows, he is drawn into a battle for the survival of her world.", rate: 9.4, releaseDate: "12/18/2009"),
    Movie(id: 2, title: "Avengers: Endgame", image: "Avengers", synopsis: "Adrift in space with no food or water, Tony Stark sends a message to Pepper Potts as his oxygen supply starts to dwindle. Meanwhile, the remaining Avengers -- Thor, Black Widow, Captain America and Bruce Banner -- must figure out a way to bring back their vanquished allies for an epic showdown with Thanos -- the evil demigod who decimated the planet and the universe.", rate: 9.2, releaseDate: "04/26/2019"),
    Movie(id: 3, title: "Harry Potter and the Deathly Hallows: Part 2", image: "HP-2", synopsis: "Without the guidance and protection of their professors, Harry (Daniel Radcliffe), Ron (Rupert Grint) and Hermione (Emma Watson) begin a mission to destroy the Horcruxes, the sources of Voldemort's immortality. Though they must rely on one another more than ever, dark forces threaten to tear them apart. Voldemort's Death Eaters have seized control of the Ministry of Magic and Hogwarts, and they are searching for Harry -- even as he and his friends prepare for the ultimate showdown.", rate: 9.5, releaseDate: "07/15/2021")
]

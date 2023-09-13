//
//  Model.swift
//  AdapaGalleryApp
//
//  Created by Adapa,Venkata Rayudu on 3/15/23.
//

import Foundation

struct AppConstants {
    static let carsKeywords = ["BMW", "Lambo", "Ferrari", "Jeep","Car","car","cars","Cars"]
    static let carsPictures = ["BMW", "Lambo", "Ferrari", "Jeep", "AUDI"]
    
    static let DogsKeywords = ["Dog", "Dog2", "Dog3", "Dog4", "Dog5"]
    static let DogsPictures = ["Dog", "Dog2", "Dog3", "Dog4", "Dog5"]
    
    static let flowersKeywords = ["flower", "flower1", "flower2", "flower3", "flower4"]
    static let flowersPictures = ["flower", "flower1", "flower2", "flower3", "flower4"]
    
    static let SnowAnimalsKeywords = ["snowAnimal", "snowAnimal1", "snowAnimal2", "snowAnimal3", "snowAnimal4"]
    static let SnowAnimalsPictures = ["snowAnimal1", "snowAnimal1", "snowAnimal2", "snowAnimal3", "snowAnimal4"]
    
    static let WaterAnimalsKeywords = ["nemo", "Piano", "jellyfish", "tortoise", "Starfish"]
    static let WaterAnimalsPictures = ["nemo", "Piano", "jellyfish", "tortoise", "Starfish"]

    // add more categories here
    
    static let randomValueOfLikesAndDislikes: UInt32 = 100
    static let defaultSearchMessage = "Sorry! No pictures found for the search. Try again with a different search keyword."
    static let defaultCommentMessage = "No comments yet."
}

struct Picture {
    let name: String
    var likeCount: String
    var dislikeCount: String
    var comments: [String]
    
    init(name: String) {
        self.name = name
        self.likeCount = "\(arc4random_uniform(AppConstants.randomValueOfLikesAndDislikes))"
        self.dislikeCount = "\(arc4random_uniform(AppConstants.randomValueOfLikesAndDislikes))"
        self.comments = []
    }
}

class Category {
    var keywords: [String]
    var pictures: [Picture]
    
    init(with keywords: [String], pictureNames: [Picture]) {
        // initialize the properties here
        self.keywords = keywords
        self.pictures = pictureNames
        }
    
    }



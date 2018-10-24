//
//  Movie.swift
//  Flix
//
//  Created by Felipe De La Torre on 10/22/18.
//  Copyright © 2018 Felipe De La Torre. All rights reserved.
//

import Foundation

class Movie {
 
    var title: String
    var posterUrl: URL?
    var releaseDate: String
    var overView : String
    var backDrop : URL?
    
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title"
        releaseDate = dictionary["release_date"] as? String ?? "No release date"
        overView = dictionary["overview"] as? String ?? "No overview"
        
        let posterPath = dictionary["poster_path"] as? String ?? "No poster path"
        let backDropPath = dictionary["backdrop_path"] as? String ?? "No back drop path"
        let baseURLString = "https://image.tmdb.org/t/p/w500"
        posterUrl = URL(string: baseURLString + posterPath)
        backDrop = URL(string: baseURLString + backDropPath)
    }
    
    //convert dictionary to movie
    class func movies(dictionaries: [[String: Any]]) -> [Movie] {
        var movies: [Movie] = []
        for dictionary in dictionaries {
            let movie = Movie(dictionary: dictionary)
            movies.append(movie)
        }
        
        return movies
    }
}

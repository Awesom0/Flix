//
//  DetailViewController.swift
//  Flix
//
//  Created by Felipe De La Torre on 10/4/18.
//  Copyright © 2018 Felipe De La Torre. All rights reserved.
//

import UIKit

enum MovieKeys{
    static let title = "title"
    static let releaseDate = "release_date"
    static let overView = "overview"
    static let backdropPath = "backdrop_path"
    static let posterPath  = "poster_path"
    
}

class DetailViewController: UIViewController {

    
    
    @IBOutlet weak var backDropImageView: UIImageView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var overViewLabel: UILabel!
    
    var movie: [String: Any]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let movie = movie{
            titleLabel.text = movie[MovieKeys.title] as? String
            releaseDateLabel.text = movie[MovieKeys.releaseDate] as? String
            overViewLabel.text = movie[MovieKeys.overView]as? String
            
            let backdropPathString = movie[MovieKeys.backdropPath]as! String
            let posterPathString = movie[MovieKeys.posterPath]as! String
            let baseURLString = "https://image.tmdb.org/t/p/w500"
            
            let backdropURL = URL(string: baseURLString + backdropPathString)!
            backDropImageView.af_setImage(withURL: backdropURL)
            
            let posterPathURL = URL(string: baseURLString + posterPathString)!
            posterImageView.af_setImage(withURL: posterPathURL)
            
            
        }

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

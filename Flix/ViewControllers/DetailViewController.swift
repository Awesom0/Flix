//
//  DetailViewController.swift
//  Flix
//
//  Created by Felipe De La Torre on 10/4/18.
//  Copyright © 2018 Felipe De La Torre. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  
    @IBOutlet weak var backDropImageView: UIImageView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var overViewLabel: UILabel!
    
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let movie = movie{
            titleLabel.text = movie.title as String
            releaseDateLabel.text = movie.releaseDate as String
            overViewLabel.text = movie.overView as String
 
            backDropImageView.af_setImage(withURL: movie.backDrop!)
            posterImageView.af_setImage(withURL: movie.posterUrl!)
            
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

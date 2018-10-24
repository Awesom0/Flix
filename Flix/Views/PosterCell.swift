//
//  PosterCell.swift
//  Flix
//
//  Created by Felipe De La Torre on 10/4/18.
//  Copyright © 2018 Felipe De La Torre. All rights reserved.
//

import UIKit

class PosterCell: UICollectionViewCell {
    
    @IBOutlet weak var posterImageView: UIImageView!
    var movie: Movie!{
        didSet{
            posterImageView.af_setImage(withURL: movie.posterUrl!)
        }
    }
}

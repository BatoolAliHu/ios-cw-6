//
//  MovieDetailsVC.swift
//  Classwork6
//
//  Created by Batool Hussain on 7/2/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MovieDetailsVC: UIViewController {
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieRatingView: UIView!
    @IBOutlet weak var movieRated: UILabel!
    @IBOutlet weak var movieRatedView: UIView!
    @IBOutlet weak var movieReleaseDate: UILabel!
    @IBOutlet weak var movieReleaseDateView: UIView!
    
    @IBOutlet weak var actorImg1: UIImageView!
    @IBOutlet weak var actorName1: UILabel!
    @IBOutlet weak var actorImg2: UIImageView!
    @IBOutlet weak var actorName2: UILabel!
    @IBOutlet weak var actorImg3: UIImageView!
    @IBOutlet weak var actorName3: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMovieDetails()
        configureUI()
    }
    
    
    
    
    func setMovieDetails(){
        //  Image
        movieImage.image = UIImage(named: selectedMovie.movieName)
       
        //  labels
        movieRating.text = "\(selectedMovie.rating)"
        movieRated.text = selectedMovie.pgRating
        movieReleaseDate.text = "\(selectedMovie.movieReleaseDate)"
        
        //  Actors
        actorImg1.image = UIImage(named: selectedMovie.actors[0])
        actorImg2.image = UIImage(named: selectedMovie.actors[1])
        actorImg3.image = UIImage(named: selectedMovie.actors[2])
        
        actorName1.text = selectedMovie.actors[0]
        actorName2.text = selectedMovie.actors[1]
        actorName3.text = selectedMovie.actors[2]
        
    }
    
    func configureUI(){
        movieRatedView.layer.cornerRadius = 12
        movieRatingView.layer.cornerRadius = 12
        movieReleaseDateView.layer.cornerRadius = 12
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

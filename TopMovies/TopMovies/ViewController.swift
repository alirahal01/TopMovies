//
//  ViewController.swift
//  TopMovies
//
//  Created by ali rahal on 27/11/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let request = PopularMovieRequest()
        
        NetworkService().request(request) { response in
            switch response {
            case .success(let movies):
                print(movies)
            case .failure(let error):
                print(error)
            }
        }
        // Do any additional setup after loading the view.
    }


}


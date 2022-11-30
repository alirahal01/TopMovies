//
//  PopularMovieListViewModel.swift
//  TopMovies
//
//  Created by ali rahal on 30/11/2022.
//

import Foundation

protocol PopularMovieListViewModel: AnyObject {
    var movies: [Movie] { set get }
    var onFetchMovieSucceed: (() -> Void)? { set get }
    var onFetchMovieFailure: ((Error) -> Void)? { set get }
    func fetchMovie()
}

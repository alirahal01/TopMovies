//
//  PopularMovieListViewModel.swift
//  TopMovies
//
//  Created by ali rahal on 30/11/2022.
//

import Foundation

final class PopularMovieListDefaultViewModel: PopularMovieListViewModel {
    var movies: [Movie] = []
    
    var onFetchMovieSucceed: (() -> Void)?
    
    var onFetchMovieFailure: ((Error) -> Void)?
    
    func fetchMovie() {
        let request = PopularMovieRequest()
        self.networkService.request(request) { [weak self] result in
            switch result {
            case .success(let response):
                self?.movies = response
                print(response)
            case .failure(let error):
                print(error)
            }
        }
        
    }
    //Properties
    let networkService: NetworkService
    
    init(networkService: NetworkService) {
        self.networkService = networkService
    }
}

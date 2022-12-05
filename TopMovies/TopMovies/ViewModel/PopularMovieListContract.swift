//
//  PopularMovieListViewModel.swift
//  TopMovies
//
//  Created by ali rahal on 30/11/2022.
//

import Foundation

final class PopularMovieListViewModel: PopularMovieListContract {
    var movies: [Movie] = []
    
    var onFetchMovieSucceed: (() -> Void)?
    
    var onFetchMovieFailure: ((Error) -> Void)?
    
    func fetchMovie() {
        let request = PopularMovieRequest()
        self.networkService.request(request) { [weak self] result in
            switch result {
            case .success(let response):
                self?.movies = response
                self?.onFetchMovieSucceed?()
            case .failure(let error):
                self?.onFetchMovieFailure?(error)
            }
        }
        
    }
    //Properties
    let networkService: NetworkService
    
    init(networkService: NetworkService) {
        self.networkService = networkService
    }
}

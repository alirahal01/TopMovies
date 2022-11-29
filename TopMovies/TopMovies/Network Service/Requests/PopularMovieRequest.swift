//
//  PopularMovieRequest.swift
//  TopMovies
//
//  Created by ali rahal on 29/11/2022.
//

import Foundation


struct PopularMovieRequest: DataRequest {
    typealias Response = [Movie]
    
    
    private let apiKey: String = "3d8efce70b8c51d89920f25e09137520"

    var url: String {
        let baseURL: String = "https://api.themoviedb.org/3"
        let path: String = "/movie/popular"
        return baseURL + path
    }
    
    var queryItems: [String : String] {
        [
            "api_key": apiKey
        ]
    }
    
    var method: HTTPMethod {
        .get
    }
    
    func decode(_ data: Data) throws -> Response {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        decoder.dateDecodingStrategy = .formatted(dateFormatter)
        
        let response = try decoder.decode(MoviesResponse.self, from: data)
        return response.results
    }
}

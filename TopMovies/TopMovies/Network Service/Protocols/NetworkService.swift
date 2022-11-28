//
//  NetworkService.swift
//  TopMovies
//
//  Created by ali rahal on 27/11/2022.
//

import Foundation

protocol Networking {
    func request<Request: DataRequest>(_ request: Request, completion: @escaping (Result<Request.Response,Error>) -> Void)
}

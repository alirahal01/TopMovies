//
//  ErrorResponse.swift
//  TopMovies
//
//  Created by ali rahal on 27/11/2022.
//

import Foundation

enum ErrorResponse: String {
    case apiError
    case invalidEndpoint
    case invalidResponse
    case noData
    case serializationError
    
    public var description: String {
        switch self {
        case .apiError:
            return "Api Issue"
        case .invalidEndpoint:
            return "Invalid Endpoint"
        case .invalidResponse:
            return "Invalid Response"
        case .noData:
            return "No Data"
        case .serializationError:
            return "Serialization Issue"
        }
    }
}

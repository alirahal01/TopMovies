//
//  ImageClientService.swift
//  TopMovies
//
//  Created by ali rahal on 13/12/2022.
//

import UIKit

protocol ImageClientService {
    func downloadImage<Request: DataRequest>(request: Request, completion: @escaping (UIImage?, Error?) -> Void)
    func setImage(from url: String, placeholderImage: UIImage?, completion: @escaping (UIImage?) -> Void)
}

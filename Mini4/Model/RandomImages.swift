//
//  RandomImages.swift
//  Mini4
//
//  Created by Vinicius on 30/03/23.
//

import Foundation
struct RandomImages: Hashable {
    let id: Int
    let name: String
    let image: String
}

extension RandomImages {
    static let forms = [RandomImages(id: 1, name: "circulo", image: "circuloAmarelo")]

}

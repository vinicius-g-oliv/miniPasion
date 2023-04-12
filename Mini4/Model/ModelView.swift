//
//  ModelView.swift
//  Mini4
//
//  Created by Vinicius on 29/03/23.
//

import Foundation

import Foundation
import SwiftUI


struct Random: Hashable {
    var image: String
    var name: String
}

extension Random {
    static let forms = [
        Random(image: "circulo amarelo", name: "circulo"),
        Random(image: "estrela azul", name: "estrela"),
        Random(image: "hexagono laranja", name: "hexagono"),
        Random(image: "oval pink", name: "oval"),
        Random(image: "pentagono rosa claro", name: "pentagono"),
        Random(image: "quadrado verde", name: "quadrado"),
        Random(image: "retangulo roxo", name: "retangulo"),
        Random(image: "triangulo rosa", name: "triangulo"),
    ]
}

class randomImage: ObservableObject{
    @Published var randomImages :  [String] = []
    let images: [Random]  = Random.forms
    var lv: Int = 3
    func randon() -> String{
        
        let imageRan: [Random] = images.shuffled()
        let nivel = lv
        for i in imageRan{
            if nivel == 3 {
                randomImages.append(i.name)
                print(randomImages)
            }
            return i.image
        }
        
        return " "
    }
}


extension String: Identifiable {
    public typealias ID = Int
    public var id: Int {
        return hash
    }
}

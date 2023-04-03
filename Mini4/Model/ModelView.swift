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
    static let forms = [Random(image: "circulo amarelo", name: "circulo"),
                        Random(image: "circulo azul", name: "circulo"),
                        Random(image: "circulo laranja", name: "circulo"),
                        Random(image: "circulo pink", name: "circulo"),
                        Random(image: "circulo rosa claro", name: "circulo"),
                        Random(image: "circulo rosa", name: "circulo"),
                        Random(image: "circulo roxo", name: "circulo"),
                        Random(image: "circulo verde", name: "circulo"),
                        Random(image: "estrela amarela", name: "circulo"),
                        Random(image: "estrela azul", name: "estrela"),
                        Random(image: "estrela laranja", name: "estrela"),
                        Random(image: "estrela pink", name: "estrela"),
                        Random(image: "estrela rosa claro", name: "estrela"),
                        Random(image: "estrela rosa", name: "estrela"),
                        Random(image: "estrela roxo", name: "estrela"),
                        Random(image: "estrela verde", name: "estrela"),
                        
                        
                        
                        Random(image: "hexagono amarela", name: "hexagono"),
                        Random(image: "hexagono azul", name: "hexagono"),
                        Random(image: "hexagono laranja", name: "hexagono"),
                        Random(image: "hexagono pink", name: "hexagono"),
                        Random(image: "hexagono rosa claro", name: "hexagono"),
                        Random(image: "hexagono rosa", name: "hexagono"),
                        Random(image: "hexagono roxo", name: "hexagono"),
                        Random(image: "hexagono verde", name: "hexagono"),
                        
                        Random(image: "oval amarelo", name: "oval"),
                        Random(image: "oval azul", name: "oval"),
                        Random(image: "oval laranja", name: "oval"),
                        Random(image: "oval pink", name: "oval"),
                        Random(image: "oval rosa claro", name: "oval"),
                        Random(image: "oval rosa", name: "oval"),
                        Random(image: "oval roxo", name: "oval"),
                        Random(image: "oval verde", name: "oval"),
                        
                        Random(image: "pentagono amarelo", name: "pentagono"),
                        Random(image: "pentagono azul", name: "pentagono"),
                        Random(image: "pentagono laranja", name: "pentagono"),
                        Random(image: "pentagono pink", name: "pentagono"),
                        Random(image: "pentagono rosa claro", name: "pentagono"),
                        Random(image: "pentagono rosa", name: "pentagono"),
                        Random(image: "pentagono roxo", name: "pentagono"),
                        Random(image: "pentagono verde", name: "pentagono"),
                        
                        Random(image: "quadrado amarelo", name: "quadrado"),
                        Random(image: "quadrado azul", name: "quadrado"),
                        Random(image: "quadrado laranja", name: "quadrado"),
                        Random(image: "quadrado pink", name: "quadrado"),
                        Random(image: "quadrado rosa claro", name: "quadrado"),
                        Random(image: "quadrado rosa", name: "quadrado"),
                        Random(image: "quadrado roxo", name: "quadrado"),
                        Random(image: "quadrado verde", name: "quadrado"),
                        
                        Random(image: "retangulo amarelo", name: "retangulo"),
                        Random(image: "retangulo azul", name: "retangulo"),
                        Random(image: "retangulo laranja", name: "retangulo"),
                        Random(image: "retangulo pink", name: "retangulo"),
                        Random(image: "retangulo rosa claro", name: "retangulo"),
                        Random(image: "retangulo rosa", name: "retangulo"),
                        Random(image: "retangulo roxo", name: "retangulo"),
                        Random(image: "retangulo verde", name: "retangulo"),
                        
                        Random(image: "triangulo amarelo", name: "triangulo"),
                        Random(image: "triangulo azul", name: "triangulo"),
                        Random(image: "triangulo laranja", name: "triangulo"),
                        Random(image: "triangulo pink", name: "triangulo"),
                        Random(image: "triangulo rosa claro", name: "triangulo"),
                        Random(image: "triangulo rosa", name: "triangulo"),
                        Random(image: "triangulo roxo", name: "triangulo"),
                        Random(image: "triangulo verde", name: "triangulo"),
                        
                        
    ]
}

class randomImage: ObservableObject{
    var randomImages = [String]()
    var images: [Random]  = Random.forms
    
    
    
    func randon() -> String{
        var imagensRan: Random
        
        
        imagensRan = images.randomElement()!
        if randomImages.isEmpty {
            randomImages.append(imagensRan.name)
            
            return imagensRan.image
        }else if (imagensRan.name == randomImages.last) {
            
            imagensRan = images.randomElement()!
            randomImages.append(imagensRan.name)
            
            return imagensRan.image
        }else {
            randomImages.append(imagensRan.name)
            
            return imagensRan.image
        }
        
    }
    
    func returnArray() -> [String]{
        
        
        return randomImages
    }
}



extension String: Identifiable {
    public typealias ID = Int
    public var id: Int {
        return hash
    }
}

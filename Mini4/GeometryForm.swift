//
//  GeometryForm.swift
//  Mini4
//
//  Created by Barbara Argolo on 27/03/23.
//
import SwiftUI

struct GeometryForm: Hashable {
    let id: Int
    let name: String
    let color: Color
    let image: String
}

extension GeometryForm {
    
    static let forms = [GeometryForm(id: 1, name: "circulo", color: .black, image:"circulo amarelo"),
                        GeometryForm(id: 2, name: "triangulo", color: .black, image: "triangulo rosa"),
                        GeometryForm(id: 3, name: "pentagono", color: .black, image: "pentagono rosa claro"),
                        GeometryForm(id: 4, name: "estrela", color: .black, image: "estrela azul"),
                        GeometryForm(id: 5, name: "retangulo", color: .black, image: "retangulo roxo"),
                        GeometryForm(id: 6, name: "oval", color: .black, image: "oval pink"),
                        GeometryForm(id: 7, name: "quadrado", color: .black, image: "quadrado verde"),
                        GeometryForm(id: 8, name: "hexagono", color: .black, image: "hexagono laranja")]
    
}

//struct WhiteForm: Hashable, Identifiable {
//    let id: Int
//    let name: String
//    let image: String
//}
//
//extension WhiteForm {
//
//    static let forms = [WhiteForm(id: 1, name: "circulo", image: "circulo branco"),
//                        WhiteForm(id: 2, name: "triangulo", image: "triangulo branco"),
//                        WhiteForm(id: 3,name: "pentagono", image: "pentagono branco"),
//                        WhiteForm(id: 4,name: "estrela", image: "estrela branca"),
//                        WhiteForm(id: 5,name: "retangulo", image: "retangulo branco"),
//                        WhiteForm(id: 6,name: "oval", image: "oval branco"),
//                        WhiteForm(id: 7,name: "quadrado", image: "quadrado branco"),
//                        WhiteForm(id: 8,name: "hexagono", image: "hexagono branco")]
//
//}

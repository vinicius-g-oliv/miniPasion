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
    
    static let forms = [GeometryForm(id: 1, name: "circulo", color: .black, image: "circulo branco"),
                        GeometryForm(id: 2, name: "triangulo", color: .black, image: "triangulo branco"),
                        GeometryForm(id: 3, name: "pentagono", color: .black, image: "pentagono branco"),
                        GeometryForm(id: 4, name: "estrela", color: .black, image: "estrela branca"),
                        GeometryForm(id: 5, name: "retangulo", color: .black, image: "retangulo branco"),
                        GeometryForm(id: 6, name: "oval", color: .black, image: "oval branco"),
                        GeometryForm(id: 7, name: "quadrado", color: .black, image: "quadrado branco"),
                        GeometryForm(id: 8, name: "hexagono", color: .black, image: "hexagono branco")]
    
}

//
//  GeometryForm.swift
//  Mini4
//
//  Created by Barbara Argolo on 27/03/23.
//
import SwiftUI



//struct GeometryForm: Identifiable {
//    var id: Int
//    var color: Color
//    var symbol: String
//}
//
//extension GeometryForm {
//    static var forms = [GeometryForm(id: 1, color: .black, symbol: "square.fill"),
//                        GeometryForm(id: 2, color: .black, symbol: "hexagon.fill"),
//                        GeometryForm(id: 3, color: .blue, symbol: "circle.fill"),
//                        GeometryForm(id: 4, color: .red, symbol: "rectangle.fill"),
//                        GeometryForm(id: 5, color: .red, symbol: "oval.fill"),
//                        GeometryForm(id: 6, color: .red, symbol: "triangle.fill"),
//                        GeometryForm(id: 7, color: .red, symbol: "octagon.fill"),
//                        GeometryForm(id: 8, color: .red, symbol: "pentagon.fill")]
//
//}
    
//    static func removeAllForms() {
//        forms.removeAll()
//    }

struct GeometryForm: Hashable {
    let id: Int
    let name: String
    let color: Color
    let image: String
}

extension GeometryForm {
    static let forms = [GeometryForm(id: 1, name: "circulo", color: .black, image: "circuloBranco"),
                        GeometryForm(id: 2, name: "triangulo", color: .black, image: "trianguloBranco"),
                        GeometryForm(id: 3, name: "pentagono", color: .black, image: "pentagonoBranco"),
                        GeometryForm(id: 4, name: "estrela", color: .black, image: "estrelaBranco"),
                        GeometryForm(id: 5, name: "retangulo", color: .black, image: "retanguloBranco"),
                        GeometryForm(id: 6, name: "elipse", color: .black, image: "elipseBranco"),
                        GeometryForm(id: 7, name: "quadrado", color: .black, image: "quadradoBranco"),
                        GeometryForm(id: 8, name: "hexagono", color: .black, image: "hexagonoBranco")]

}

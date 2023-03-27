//
//  GeometryForm.swift
//  Mini4
//
//  Created by Barbara Argolo on 27/03/23.
//
import SwiftUI


struct GeometryForm: Identifiable {
    let id: Int
     let color: Color
}

extension GeometryForm {
    static let forms = [GeometryForm(id: 1, color: .black),
                        GeometryForm(id: 2, color: .black),
                        GeometryForm(id: 3, color: .blue),
                      GeometryForm(id: 4, color: .red),
                      GeometryForm(id: 5, color: .red),
                      GeometryForm(id: 6, color: .red),
                      GeometryForm(id: 7, color: .red),
                      GeometryForm(id: 8, color: .red)]
}

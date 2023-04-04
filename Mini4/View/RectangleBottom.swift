//
//  RectangleBottom.swift
//  Mini4
//
//  Created by Barbara Argolo on 28/03/23.
//

import SwiftUI

struct RectangleBottom: View {
    
    var randomImages: randomImage
    @State var clickedButtonsIDs: [String] = [] //array vazio a ser preenchido
    @State var clickedButtonsName: [String] = []

    var body: some View {
        ZStack(alignment: .bottom) {
            Rectangle()
                .fill(.white)
                .ignoresSafeArea()
                .frame(width: 400, height: 275)
            BottomButtons(arraycerto: randomImages, clickedButtonIDs: $clickedButtonsIDs, clickedButtonName: $clickedButtonsName)
        }.navigationBarBackButtonHidden()
    }
}

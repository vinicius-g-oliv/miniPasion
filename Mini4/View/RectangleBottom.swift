//
//  RectangleBottom.swift
//  Mini4
//
//  Created by Barbara Argolo on 28/03/23.
//

import SwiftUI

struct RectangleBottom: View {
    
    @State var clickedButtonsIDs: [Int] = [] //array vazio a ser preenchido

    var body: some View {
        ZStack(alignment: .bottom) {
            Rectangle()
                .fill(.gray)
                .ignoresSafeArea()
                .frame(width: 400, height: 275)
            BottomButtons(clickedButtonIDs: $clickedButtonsIDs) //passando como parâmetro o Binding clickedButtonsID
            
            // chamar view do botao que vai dar refresh no array
          //  RefreshAndOkButtons()
        }
    }
}

struct RectangleBottom_Previews: PreviewProvider {
    static var previews: some View {
        RectangleBottom()
    }
}

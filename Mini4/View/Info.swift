//
//  Info.swift
//  Mini4
//
//  Created by Vinicius on 01/04/23.
//

import Foundation
import SwiftUI

struct Info: View {
    
    var title: String
    
    @Binding var show: Bool
    var body: some View {
        ZStack {
            GeometryReader(){ geo in
                if show {
                    // PopUp Window
                    Color.black.opacity(show ? 0.3 : 0).edgesIgnoringSafeArea(.all)
                    ZStack {
                        Image("cardInfo").resizable()
                       
                      
                        
                        
                    }.frame(width: 300, height: 300).position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.5))
                }
            }
        }
    }
}


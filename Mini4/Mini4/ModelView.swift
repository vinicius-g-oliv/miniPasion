//
//  ModelView.swift
//  Mini4
//
//  Created by Vinicius on 28/03/23.
//

import Foundation
import SwiftUI




class randomImage: ObservableObject{
    var randomImages = [String]()
    var images = ["sun.max.fill", "moon.fill", "star.fill","sun.max.fill"]
    var misturado = [String]()
    var newimagensRan = String()
    @State var i = 0
    func randon() -> String{
        var imagensRan: String = ""
       
        
        imagensRan = images.randomElement()!
        if randomImages.isEmpty {
            randomImages.append(imagensRan)
            self.i+=1
            return imagensRan
        }else if (imagensRan == randomImages.last) {
            
                imagensRan = images.randomElement()!
            randomImages.append(imagensRan)
            self.i+=1
                return imagensRan
        }else {
            randomImages.append(imagensRan)
            return imagensRan
        }
       
        }
}




//
//  ModelView.swift
//  Mini4
//
//  Created by Vinicius on 29/03/23.
//

import Foundation

import Foundation
import SwiftUI




class randomImage: ObservableObject{
    var randomImages = [String]()
    var images = ["sun.max.fill", "moon.fill", "star.fill","sun.max.fill"]
   
    var newimagensRan = String()
   
    func randon() -> String{
        var imagensRan: String = ""
       
        
        imagensRan = images.randomElement()!
        if randomImages.isEmpty {
            randomImages.append(imagensRan)
            
            return imagensRan
        }else if (imagensRan == randomImages.last) {
            
                imagensRan = images.randomElement()!
            randomImages.append(imagensRan)
           
                return imagensRan
        }else {
            randomImages.append(imagensRan)
            return imagensRan
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

//
//  Mini4App.swift
//  Mini4
//
//  Created by Barbara Argolo on 22/03/23.
//

import SwiftUI

@main
struct Mini4App: App {
    var body: some Scene {
        let images = randomImage()
        WindowGroup {
            Respostaslv1(randomImages: images)
        }
    }
}

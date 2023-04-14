//
//  AboutViewArray.swift
//  Mini4
//
//  Created by Barbara Argolo on 13/04/23.
//
import SwiftUI

struct AboutViewModel: Identifiable {
    let id: Int
    let name: String
    let image: String
    let descricao: String
}

extension AboutViewModel {
    
    static let views = [AboutViewModel(id: 1, name: "Sobre", image:"infoSymbol", descricao: "Memo é um jogo que ajuda e exercitar a memória de maneira divertida e lúdica!"),
                        AboutViewModel(id: 2, name: "Entre em Conta Contato", image: "infoSymbol", descricao: "")]
    
}

struct HowToPlayViewModel: Identifiable {
    let id: Int
    let name: String
    let image: String
    let descricao: String
}

extension HowToPlayViewModel {
    
    static let views = [HowToPlayViewModel(id: 1, name: "Como Jogar", image:"triangulo pink", descricao: "Vão aparecer fomas geométricas numa sequência aleatória e você terá que decorar a forma ou a cor e a sequência."),
                        HowToPlayViewModel(id: 2, name: "Como jogar", image: "telaiPhoneView", descricao: "Você terá que colocar a resposta na ordem correta.")]
    
}


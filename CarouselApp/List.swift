//
//  File.swift
//  CarouselApp
//
//  Created by iOS Developer on 30/01/24.
//

import SwiftUI

struct infoLocation: Identifiable  {
    let id: Int
    let name: String
    let info: String
    let rate: String
    let image: String
}

let info: [infoLocation] = [
    
    infoLocation(id: 0, name: "Guatemala", info: "A Guatemala é um país fascinante com muito a oferecer aos visitantes.  A Guatemala é o lar de alguns dos sítios arqueológicos maias mais importantes do mundo, incluindo Tikal, Chichicastenango e Quiriguá.", rate: "⭐️ 8.5", image: "Guatemala"),
    
    infoLocation(id:1, name:"Caribbean", info: "O Caribe é um destino turístico popular por muitos motivos: suas águas cristalinas, praias de areia branca, clima quente e cultura vibrante. Os resorts são uma opção popular de hospedagem para os viajantes que procuram uma experiência de férias completa e sem complicações.", rate: "⭐️ 9.5", image: "hotelRoyalCaribbean"),
    
    infoLocation(id:2, name:"maldives", info: "As Maldivas são um arquipélago de ilhas no Oceano Índico, localizado ao sul da Índia e da costa leste do Sri Lanka. O arquipélago é composto por 26 atóis, que abrigam mais de 1.190 ilhas. Apenas cerca de 200 das ilhas são habitadas, e a maioria das ilhas turísticas são resorts isolados", rate: " ⭐️ 10.0", image: "maldives"),

]

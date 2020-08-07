//
//  Movie.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 07/08/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

struct Movie : Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var castAndCrews: [CastAndCrewModel]
    var image: String { return name }
}



let movieData = Movie(name: "Lion King",
                         description: "Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.",
                        castAndCrews: sampleCastCrewData)

let sampleCastCrewData = [
    CastAndCrewModel(name: "Matthew Broderick", designation: "Simba"),
    CastAndCrewModel(name: "Rowan Atkinson", designation: "Zazu"),
    CastAndCrewModel(name: "Jim Cummings", designation: "Ed"),
    CastAndCrewModel(name: "Whoopi Goldberg", designation: "Shenzi"),
]

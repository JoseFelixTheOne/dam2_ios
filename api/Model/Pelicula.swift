//
//  Pelicula.swift
//  api
//
//  Created by DAMII on 14/10/23.
//

import Foundation

struct Pelicula: Codable{
    let idpelicula: Int
    let nombrepelicula: String!
    let descripcionpelicula: String!
    let idcategoria: Int!
    let fechaestreno: String!
    
}

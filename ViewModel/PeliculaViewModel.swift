//
//  PeliculaViewModel.swift
//  api
//
//  Created by DAMII on 14/10/23.
//

import Foundation

class PeliculaViewModel{
    var refreshData = {() -> () in}
    
    var dataArray: [List] = [] {
        didSet {
            refreshData()
        }
    }
    
    func retrivDataList() {
        guard let url = URL(string: "http://damii2023-001-site1.itempurl.com/api/Pelicula") else {return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let json = data else { return }
            do {
                let decoder = JSONDecoder()
                self.dataArray = try decoder.decode([List].self, from: json)
            } catch let error {
                print("Ha ocurrido un error: \(error.localizedDescription)")
            }
        }.resume()
    }
}

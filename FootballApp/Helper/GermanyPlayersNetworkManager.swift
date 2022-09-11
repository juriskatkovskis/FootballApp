//
//  GermanyPlayersNetworkManager.swift
//  FootballApp
//
//  Created by juris.katkovskis on 11/09/2022.
//

import Foundation
class GermanyPlayersNetworkManager{
static func fetchData(completion: @escaping ([Datum]) -> () ){
    
        guard let url = URL(string: "https://app.sportdataapi.com/api/v1/soccer/players?apikey=59748fd0-2f87-11ed-84ba-a99e038421a8&country_id=48")
                else {
            return
        }
        
    
   
    
    var request = URLRequest(url: url)
    request.httpMethod = "GET"
    
    let config = URLSessionConfiguration.default
    config.waitsForConnectivity = true
    
    URLSession(configuration: config).dataTask(with: request) { data, response, error in
        
        guard error == nil else {
            print((error?.localizedDescription)!)
            return
        }
        
        guard let data = data else {
            print(String(describing:error))
            return
        }
    
    
  do{
         let jsonData = try JSONDecoder().decode(Teams.self, from: data)
      completion(jsonData.data ?? [])
    }catch{
        print("err:::", error)
    }
    
    
}.resume()
    
}
}

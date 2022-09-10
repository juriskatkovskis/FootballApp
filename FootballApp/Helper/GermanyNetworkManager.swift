//
//  GermanyNetworkManager.swift
//  FootballApp
//
//  Created by juris.katkovskis on 10/09/2022.
//

import Foundation
class GermanyNetworkManager{

static func fetchData(completion: @escaping ([Datum]) -> () ){
    
        guard let url = URL(string: "https://app.sportdataapi.com/api/v1/soccer/teams?apikey=59748fd0-2f87-11ed-84ba-a99e038421a8&country_id=48")
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
         let jsonData = try JSONDecoder().decode(GermanyTeams.self, from: data)
      completion(jsonData.data ?? [])
    }catch{
        print("err:::", error)
    }
    
    
}.resume()
    
}
}

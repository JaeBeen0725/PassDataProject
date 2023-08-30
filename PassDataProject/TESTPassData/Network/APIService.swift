//
//  APIService.swift
//  PassDataProject
//
//  Created by Jae Oh on 2023/08/30.
//

import UIKit

class APIService {
    
   
    
    static let shard = APIService()

   

    func callRequest() {
        
        let url = URL(string: "https://apod.nasa.gov/apod/image/2308/M66_JwstTomlinson_3521.jpg")
        
        let request = URLRequest(url: url!)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            print(data)
            
            //let value = String(data: )
            print(response)
            print(error)
            
        }.resume()
    }
    
}

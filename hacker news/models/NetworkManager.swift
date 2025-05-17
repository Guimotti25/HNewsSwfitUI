//
//  NetwordManager.swift
//  hacker news
//
//  Created by Guilherme Motti on 16/05/25.
//

import Foundation

class NetworkManager: ObservableObject
{
    @Published var posts = [Post]()
    
    func fetchData() {
       if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
           URLSession.shared.dataTask(with: url) { (data, _, error) in
               if let error = error {
                   print("Error: \(error)")
                   return
               }
               
               if let data = data {
                   let decoder = JSONDecoder()
                   do
                   {
                     let results = try decoder.decode(Results.self, from: data)
                       DispatchQueue.main.async {
                           self.posts = results.hits
                       }
                   }
                   catch
                   {
                       print(String(data: data, encoding: .utf8) ?? "No data")
                   }
               }
           }
       }
    }
    
}


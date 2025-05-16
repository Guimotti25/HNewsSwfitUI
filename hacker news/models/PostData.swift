//
//  PostData.swift
//  hacker news
//
//  Created by Guilherme Motti on 16/05/25.
//

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int?
    let title: String?
    let url: String?
}

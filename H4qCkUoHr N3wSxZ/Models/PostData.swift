//
//  PostData.swift
//  H4qCkUoHr N3wSxZ
//
//  Created by Mark Kenneth Bayona on 8/8/21.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
}

//
//  NetworkManager.swift
//  H4qCkUoHr N3wSxZ
//
//  Created by Mark Kenneth Bayona on 8/8/21.
//

import Foundation

class NetworkManager {
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, err in
                if err == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
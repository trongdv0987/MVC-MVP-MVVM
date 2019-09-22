//
//  PostNetWorking.swift
//  MVC-MVP-MVVM
//
//  Created by DuongTrong on 9/21/19.
//  Copyright © 2019 DuongTrong. All rights reserved.
//

import Foundation

class PostNetworking {
    private init() {}
    
    static func getPosts(completion: @escaping (GetPostsResponse) -> Void) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        NetworkingService.shared.getData(fromURL: url) { (json) in
            do {
                let response = try GetPostsResponse(json: json)
                completion(response)
            } catch {}
        }
    }
}

//
//  ViewController.swift
//  MVC-MVP-MVVM
//
//  Created by DuongTrong on 9/20/19.
//  Copyright © 2019 DuongTrong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tbVIew: UITableView!
    
    var post = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PostNetworking.getPosts { (response) in
            let post = response.posts
            self.post = post
            self.tbVIew.reloadData()
        }
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tbVIew: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return post.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? PostTableViewCell else {
            return UITableViewCell()
        }
        
        let posts = post[indexPath.row]
        cell.configure(withPost: posts)
        return cell
    }
}

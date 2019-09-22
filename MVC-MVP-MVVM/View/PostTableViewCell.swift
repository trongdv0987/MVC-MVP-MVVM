//
//  PostTableViewCell.swift
//  MVC-MVP-MVVM
//
//  Created by DuongTrong on 9/21/19.
//  Copyright © 2019 DuongTrong. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var txtTitle: UILabel!
    @IBOutlet weak var txtBody: UITextView!
    
    func configure(withPost post: Post) {
        txtTitle.text = post.title
        txtBody.text = post.body
    }
}

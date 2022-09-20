//
//  ArticleTableViewCell.swift
//  NewsApp-MVVM
//
//  Created by Burak Altunoluk on 20/09/2022.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}

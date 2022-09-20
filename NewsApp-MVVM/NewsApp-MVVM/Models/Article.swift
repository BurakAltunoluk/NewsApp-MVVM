//
//  Article.swift
//  NewsApp-MVVM
//
//  Created by Burak Altunoluk on 19/09/2022.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let url: String
}

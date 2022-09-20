//
//  ArticleViewModel.swift
//  NewsApp-MVVM
//
//  Created by Burak Altunoluk on 20/09/2022.
//

import Foundation


struct ArticleListViewModel {
    let articles: [Article]
    
    var numberOfSections: Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
    
}


struct ArticleViewModel {
    private let article: Article
    
    var title: String {
        return self.article.title
    }
    
    var url: String {
        return self.article.url
    }
    
    init(_ article: Article){
        self.article = article
    }
    
}


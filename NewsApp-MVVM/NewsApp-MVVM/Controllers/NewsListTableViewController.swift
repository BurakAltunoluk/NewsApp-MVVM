//
//  NewsListTableViewController.swift
//  NewsApp-MVVM
//
//  Created by Burak Altunoluk on 19/09/2022.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {

    private var articleListVM: ArticleListViewModel!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        setup()
    
    }
    
    private func setup() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=tr&apiKey=0cf790498275413a9247f8b94b3843fd")!
        
        WebService().getArticles(url: url){ articles in
            if let articles = articles {
                
                self.articleListVM = ArticleListViewModel(articles: articles)
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
            
        }
        
    }
   
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return self.articleListVM == nil ? 0 : self.articleListVM.numberOfSections
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articleListVM.numberOfRowsInSection(section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as? ArticleTableViewCell else { fatalError("not found") }
            
            let articleVM = self.articleListVM.articleAtIndex(indexPath.row)
            
            cell.titleLabel.text = articleVM.title
            cell.descriptionLabel.text = articleVM.url
          return cell
    }
}

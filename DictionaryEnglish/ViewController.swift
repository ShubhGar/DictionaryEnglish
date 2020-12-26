//
//  ViewController.swift
//  DictionaryEnglish
//
//  Created by shubham Garg on 16/07/20.
//  Copyright © 2020 shubham Garg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableview: UITableView!
    var words:[String: String] = [:]
    var searchWords:[String: String] = [:]
    override func viewDidLoad() {
        searchBar.delegate = self
        tableview.delegate = self
        tableview.dataSource = self
        tableview.tableFooterView = UIView(frame: .zero)
        
        super.viewDidLoad()
        self.loadWords()
        // Do any additional setup after loading the view.
    }
    
    func loadWords(){
        self.words = WORDS
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchWords.keys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SuggestionTableViewCell.self), for: indexPath) as! SuggestionTableViewCell
        let key = Array(searchWords.keys)[indexPath.row]
        cell.wordLbl.text = key
        cell.meaningLbl.text = searchWords[key]
        return cell
    }
    
    
}

extension ViewController:UISearchBarDelegate{
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        self.searchWords = words.filter({ (key, value) -> Bool in
            return key.uppercased().contains(searchText.uppercased())
        })
        tableview.reloadData()
    }
}

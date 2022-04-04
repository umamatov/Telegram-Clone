//
//  SearchbarCell.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 30/03/22.
//

import UIKit

class SearchbarCell: UITableViewCell{
    
    
    var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints=false
//        searchBar.backgroundColor = UIColor.clear
//        searchBar.layer.cornerRadius = 30
//        searchBar.tintColor = .black
//        searchBar.showsCancelButton = false
        return searchBar
    }()

    override init(style:UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(searchBar)
        searchBar.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 5).isActive=true
        searchBar.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 10).isActive=true
        searchBar.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -10).isActive=true
        searchBar.heightAnchor.constraint(equalToConstant: 30).isActive=true
        searchBar.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -5).isActive=true

        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

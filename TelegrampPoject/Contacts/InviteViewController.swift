//
//  InviteViewController.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 30/03/22.
//

import UIKit

class InviteViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    let tableView = UITableView()
    
    
    var homeview: UIView = {
        let homeview = UIView()
        homeview.translatesAutoresizingMaskIntoConstraints=false
        homeview.backgroundColor = UIColor(rgb: 0xF6F7F8)
        return homeview
    }()
    
    var invitelabel: UILabel = {
        let invitelabel = UILabel()
        invitelabel.translatesAutoresizingMaskIntoConstraints=false
        invitelabel.font = UIFont.systemFont(ofSize: 20)
        invitelabel.textColor = UIColor.black
        invitelabel.text = "Invite Friends"
        return invitelabel
    }()
    
    var closelabel: UILabel = {
        let closelabel = UILabel()
        closelabel.translatesAutoresizingMaskIntoConstraints=false
        closelabel.font = UIFont.systemFont(ofSize: 20)
        closelabel.textColor = UIColor.systemBlue
        closelabel.text = "Close"
        return closelabel
    }()
    
    var selectlabel: UILabel = {
        let selectlabel = UILabel()
        selectlabel.translatesAutoresizingMaskIntoConstraints=false
        selectlabel.font = UIFont.systemFont(ofSize: 20)
        selectlabel.textColor = UIColor.systemBlue
        selectlabel.text = "Select All"
        return selectlabel
    }()
    
    var customeview: UIView = {
        let customeview = UIView()
        customeview.translatesAutoresizingMaskIntoConstraints=false
        customeview.backgroundColor = UIColor.white
        return customeview
    }()
    
    var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.tintColor = .white
        searchBar.translatesAutoresizingMaskIntoConstraints=false
        searchBar.showsCancelButton = false
        return searchBar
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tableView.delegate=self
        tableView.dataSource=self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        customeview.addSubview(tableView)
//        tableView.contentInset=UIEdgeInsets(top: 0, left: 0, bottom: 20, right: 0)
        
        view.addSubview(homeview)
        homeview.topAnchor.constraint(equalTo: view.topAnchor,constant: 0).isActive=true
        homeview.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 0).isActive=true
        homeview.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -0).isActive=true
        homeview.heightAnchor.constraint(equalToConstant: 50).isActive=true
        
        homeview.addSubview(invitelabel)
        invitelabel.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 10).isActive=true
        invitelabel.centerXAnchor.constraint(equalTo: homeview.centerXAnchor).isActive=true
        
        homeview.addSubview(closelabel)
        closelabel.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 10).isActive=true
        closelabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        
        homeview.addSubview(selectlabel)
        selectlabel.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 10).isActive=true
        selectlabel.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -10).isActive=true
        
        view.addSubview(customeview)
        customeview.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 50).isActive=true
        customeview.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 0).isActive=true
        customeview.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -0).isActive=true
        customeview.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -0).isActive=true
        
        
        
        
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        tableView.frame = customeview.bounds
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Contacts"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.row==0){
            let cellId = "SearchbarCell"
            tableView.register(SearchbarCell.self, forCellReuseIdentifier: cellId)
            let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! SearchbarCell
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            cell.directionalLayoutMargins = .zero
//            cell.separatorInset = UIEdgeInsets(top: 0, left: 160, bottom: 0, right: 160);
            return cell
        }else if (indexPath.row==1){
            let cellId = "TelegramCell"
            tableView.register(TelegramCell.self, forCellReuseIdentifier: cellId)
            let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! TelegramCell
            cell.directionalLayoutMargins = .zero
            return cell
        }
            let cellId = "CostomOrderCell"
            tableView.register(CostomOrderCell.self, forCellReuseIdentifier: cellId)
            let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CostomOrderCell
            return cell
        }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row==0 {
            return 70
        }else if indexPath.row==1{
            return 40
        }else{
            return 60
        }
    }
    
    
    
}


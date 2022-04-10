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
    
    
    
    var list:[InvitationModel]=[]
    
    
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
        
        
        setContacts()
        
        
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        tableView.frame = customeview.bounds
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
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
        let model = list[indexPath.row]
        cell.namelabel.text=model.name
        cell.contactlabel.text=model.numberOfContacts
        cell.alertlabel.text=model.firstLetter
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
    
    
    
    func setContacts()  {
        list.append(InvitationModel(name: "Sultonov Asad", firstLetter: "S", numberOfContacts: "1,000 contacts on Telegram "))
        list.append(InvitationModel(name: "Sultonov Asad", firstLetter: "S", numberOfContacts: "1,000 contacts on Telegram "))
        list.append(InvitationModel(name: "Sultonov Asad", firstLetter: "S", numberOfContacts: "1,000 contacts on Telegram "))
        list.append(InvitationModel(name: "John Martin", firstLetter: "J", numberOfContacts: "500 contacts on Telegram "))
        list.append(InvitationModel(name: "Oyebk Mar", firstLetter: "O", numberOfContacts: "100 contacts on Telegram "))
        list.append(InvitationModel(name: "Maska", firstLetter: "M", numberOfContacts: "534 contacts on Telegram "))
        list.append(InvitationModel(name: "Botir Aka", firstLetter: "B", numberOfContacts: "67846 contacts on Telegram "))
        list.append(InvitationModel(name: "OybekJon", firstLetter: "O", numberOfContacts: "2345 contacts on Telegram "))
        list.append(InvitationModel(name: "Jack Hack", firstLetter: "J", numberOfContacts: "3564 contacts on Telegram "))
        list.append(InvitationModel(name: "Yaxyo", firstLetter: "Y", numberOfContacts: "34 contacts on Telegram "))
        list.append(InvitationModel(name: "Kamol aka", firstLetter: "K", numberOfContacts: "563 contacts on Telegram "))
        list.append(InvitationModel(name: "Sultonov Jamshid", firstLetter: "S", numberOfContacts: "87 contacts on Telegram "))
        list.append(InvitationModel(name: "Laziz", firstLetter: "L", numberOfContacts: "97 contacts on Telegram "))
        list.append(InvitationModel(name: "Rasulbek", firstLetter: "R", numberOfContacts: "235 contacts on Telegram "))
        list.append(InvitationModel(name: "Ulug'", firstLetter: "U", numberOfContacts: "345 contacts on Telegram "))
        list.append(InvitationModel(name: "Muhammad Aziz", firstLetter: "M", numberOfContacts: "1,000 contacts on Telegram "))
        list.append(InvitationModel(name: "Don", firstLetter: "D", numberOfContacts: "3456 contacts on Telegram "))
        list.append(InvitationModel(name: "Test", firstLetter: "T", numberOfContacts: "654 contacts on Telegram "))
        list.append(InvitationModel(name: "Kolya", firstLetter: "K", numberOfContacts: "7823 contacts on Telegram "))
        list.append(InvitationModel(name: "Jasur", firstLetter: "J", numberOfContacts: "4536 contacts on Telegram "))
        list.append(InvitationModel(name: "Bunyod", firstLetter: "B", numberOfContacts: "123345 contacts on Telegram "))
        list.append(InvitationModel(name: "Ilyos", firstLetter: "I", numberOfContacts: "34521 contacts on Telegram "))
        
        self.tableView.reloadData()
    }
    
}


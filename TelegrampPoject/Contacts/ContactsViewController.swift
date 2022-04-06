//
//  ContactsViewController.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 24/03/22.
//

import UIKit

class ContactsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchResultsUpdating, UISearchBarDelegate {
    
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
    let tableView = UITableView()
    
    var sortlabel: UILabel = {
        let sortlabel = UILabel()
        sortlabel.translatesAutoresizingMaskIntoConstraints=false
        sortlabel.font = UIFont.systemFont(ofSize: 16)
        sortlabel.textColor = UIColor.blue
        sortlabel.text = "Sort"
        return sortlabel
    }()
    
    var list:[Contactmodel]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor(rgb: 0xFFEEF0F5)
        navigationController?.tabBarController?.tabBar.backgroundColor=UIColor.white
        title = "Contacts"
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.backgroundColor = UIColor(rgb: 0xF6F7F8)
        self.tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
        self.tableView.register(TableViewHeader.self, forHeaderFooterViewReuseIdentifier: TableViewHeader.identifier)
        
        contactmodel()
        
        let myRightImage = UIImage(named: "add-line-2")?.withRenderingMode(.alwaysOriginal)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: myRightImage, style: .plain, target: self, action: #selector(addTapped))
        
        view.addSubview(sortlabel)
        sortlabel.topAnchor.constraint(equalTo: view.topAnchor,constant: 35).isActive=true
        sortlabel.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 8).isActive=true
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.tabBarController?.tabBar.isHidden=false
    }
    
    
    @objc func addTapped(){
        navigationController?.popViewController(animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(indexPath.row==0||indexPath.row==1){
            let cellId = "TableViewCell"
            tableView.register(FirstTableViewCell.self, forCellReuseIdentifier: cellId)
            let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! FirstTableViewCell
            if(indexPath.row==0){
                cell.findimage.image = UIImage(named: "finde_image")
                cell.peoplelabel.text = "Find People Nearby"
            }else{
                cell.findimage.image = UIImage(named: "invite_image")
                cell.peoplelabel.text = "Invite Friends"
            }
            return cell
        }
        
        
        let cellId = "TableViewCellForContact"
        tableView.register(TableViewCell.self, forCellReuseIdentifier: cellId)
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as!TableViewCell
        
        let Contactmodel = list[indexPath.row]
        
        cell.namelabel.text=Contactmodel.name
        cell.billonerimage.image=Contactmodel.image
        cell.seenlabel.text=Contactmodel.time
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height/12
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if(indexPath.row==0){
            let controller = ContactViewComtroller()
            navigationController?.pushViewController(controller, animated: true)
        }else if(indexPath.row==1){
            let vc = InviteViewController()
            
            self.showMyViewControllerInACustomizedSheet(vc: vc)
        }
        else{
            let controller = ChatViewController()
            controller.navigationItem.titleView = controller.setTitle(title: list[indexPath.row].name, subtitle: "Last seen recently")
            navigationController?.pushViewController(controller, animated: true)
            controller.imageview.image=list[indexPath.row].image
            
        }
        
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: TableViewHeader.identifier)
        
        var searchController: UISearchBar
        let searchBar = UISearchBar()
        searchBar.delegate = self
        searchBar.tintColor = .white
        searchBar.showsCancelButton = false
        return searchBar
        searchBar.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 20).isActive=true
        searchBar.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -20).isActive=true
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }

    
    func contactmodel(){
        list.append(Contactmodel())
        list.append(Contactmodel())
        
        list.append(Contactmodel(image:UIImage(named: "polis_image")!, name: "Jack Hac", time: "2:30 PM"))
        
        list.append(Contactmodel(image: UIImage(named: "musulman_image")!, name: "Hacker", time:String("Last seen recently")))
        
        list.append(Contactmodel(image: UIImage(named: "vor_image")!, name: "Jamshid", time: "Last seen recently "))
        
        list.append(Contactmodel(image: UIImage(named: "baby_image-1")!, name: "Doston Ergashev",  time: "10:10 PM"))
        
        list.append(Contactmodel(image: UIImage(named: "buetuful_image")!, name: "Rasuljon", time: "11:40 PM "))
        
        list.append(Contactmodel(image: UIImage(named: "KHabib_image")!, name: "KHabib Nurmagedov",  time: "7:07 PM"))
        
        list.append(Contactmodel(image: UIImage(named: "smile_image")!, name: "Messi", time: "00:00 PM "))
        
        list.append(Contactmodel(image: UIImage(named: "famly_image")!, name: "Jony", time: "Last seen recently "))
        
        list.append(Contactmodel(image: UIImage(named: "man_image-1")!, name: "Hacker", time: "7Last seen recently"))
        
        list.append(Contactmodel(image: UIImage(named: "newyork_image")!, name: "Hacker", time: "Last seen recently "))
        
        list.append(Contactmodel(image: UIImage(named: "texno_image")!, name: "Hacker",  time: "Last seen recently"))
        
        list.append(Contactmodel(image: UIImage(named: "baby_image")!, name: "Hacker", time: "Last seen recently"))
        
        
    }
    
}

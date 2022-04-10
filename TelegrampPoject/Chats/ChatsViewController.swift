//
//  ChatsViewController.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 24/03/22.
//

import UIKit

class ChatsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchResultsUpdating, UISearchBarDelegate{
    
    func updateSearchResults(for searchController: UISearchController){

    }
    
    let tableView = UITableView()
    
   
    
    var list:[ChatModel]=[]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor(rgb: 0xFFEEF0F5)
        navigationController?.tabBarController?.tabBar.backgroundColor=UIColor.white
        title = "Chats"
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        tableView.frame = view.bounds
        
        self.tableView.register(secondTableViewCell.self, forCellReuseIdentifier: secondTableViewCell.identifier)
        self.tableView.register(TableViewHeader1.self, forHeaderFooterViewReuseIdentifier: TableViewHeader1.identifier)
        
        let myRightImage = UIImage(named: "edit_image")?.withRenderingMode(.alwaysOriginal)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: myRightImage, style: .plain, target: self, action: #selector(addTapped))
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(addTapped))

        setChatModel()
        
        
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
        let cellId = "secondTableViewCell"
        tableView.register(secondTableViewCell.self, forCellReuseIdentifier: cellId)
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! secondTableViewCell
        
        let chatModel = list[indexPath.row]
        
        cell.namelabel.text=chatModel.name
        cell.texnoimage.image=chatModel.image
        cell.alertlabel.text=chatModel.message
        cell.checkimage.image=chatModel.tick
        cell.timelabel.text=chatModel.time
        
        
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height/10
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = ChatViewController()
        controller.imageview.image=list[indexPath.row].image
        controller.navigationItem.titleView = controller.setTitle(title: list[indexPath.row].name, subtitle: "Last seen recently")
        navigationController?.pushViewController(controller, animated: true)


    }
  
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: TableViewHeader1.identifier)
     

        let searchController: UISearchBar
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
    
    
    func setChatModel(){
        list.append(ChatModel(image: UIImage(named: "baby_image")!, name: "Jack Hack", message: "How are you?", time: "2:30 pm ", tick: UIImage(named: "check_image")!))
        
        list.append(ChatModel(image: UIImage(named: "polis_image")!, name: "Hacker", message: "Hey O'sha gap 😅😂😜", time: "7:30 pm ", tick: UIImage(named: "check_image")!))
        
        list.append(ChatModel(image: UIImage(named: "KHabib_image")!, name: "Umidjon Mamatov", message: "Bla Bla Bla ..", time: "4:30 pm ", tick: UIImage(named: "check_image")!))
        
        list.append(ChatModel(image: UIImage(named: "baby_image-1")!, name: "Doston Ergashev", message: "Qatasan?", time: "2:30 pm ", tick: UIImage(named: "check_image")!))
        
        
        list.append(ChatModel(image: UIImage(named: "buetuful_image")!, name: "Dos", message: "Oynovir 😅😂😜", time: "7:30 pm ", tick: UIImage(named: "check_image")!))
        
        list.append(ChatModel(image: UIImage(named: "famly_image")!, name: "Jamshid dos", message: "Zor", time: "4:30 pm ", tick: UIImage(named: "check_image")!))
        
        list.append(ChatModel(image: UIImage(named: "man_image-1")!, name: "Dosllar", message: "Qachon?", time: "2:30 pm ", tick: UIImage(named: "check_image")!))
        
        
        list.append(ChatModel(image: UIImage(named: "newyork_image")!, name: "John", message: "Shunaqa gap 😅😂😜", time: "7:30 pm ", tick: UIImage(named: "check_image")!))
        
        list.append(ChatModel(image: UIImage(named: "texno_image")!, name: "Don", message: "Newyork", time: "4:30 pm ", tick: UIImage(named: "check_image")!))
        
        
    }
    
}

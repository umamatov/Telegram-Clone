//
//  ForTAppedViewController.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 01/04/22.
//

import UIKit

class ForTAppedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let tableview = UITableView()
    
    var homeview: UIView = {
        let homeview = UIView()
        homeview.translatesAutoresizingMaskIntoConstraints=false
        homeview.backgroundColor = UIColor(rgb: 0xF6F7F8)
        return homeview
    }()
    
    var attachmentimage: UIImageView = {
        let attachmentimage = UIImageView()
        attachmentimage.translatesAutoresizingMaskIntoConstraints=false
        attachmentimage.image = UIImage(named: "attachment_image")
        return attachmentimage
    }()
    
    var micimage: UIImageView = {
        let micimage = UIImageView()
        micimage.translatesAutoresizingMaskIntoConstraints=false
        micimage.image = UIImage(named: "mic_image")
        return micimage
    }()
    
    var sendbtn: UIButton = {
        let sendbtn = UIButton()
        sendbtn.translatesAutoresizingMaskIntoConstraints=false
        sendbtn.backgroundColor = UIColor.systemBlue
        sendbtn.clipsToBounds = true
        sendbtn.layer.masksToBounds = false
        sendbtn.layer.cornerRadius = 15
//        sendbtn.addTarget(self, action: #selector(messagesent), for: .touchUpInside)
        return sendbtn
    }()
    
    var arrowimage: UIImageView = {
        let arrowimage = UIImageView()
        arrowimage.translatesAutoresizingMaskIntoConstraints=false
        arrowimage.image = UIImage(named: "arrow_image")
        return arrowimage
    }()

    var textfiel: UITextView = {
        let textfiel = UITextView()
        textfiel.translatesAutoresizingMaskIntoConstraints=false
        textfiel.keyboardAppearance = .dark
        textfiel.keyboardType = .default
        textfiel.layer.cornerRadius = 30
        textfiel.backgroundColor = UIColor.white
        textfiel.textColor = .black
        textfiel.font = UIFont.systemFont(ofSize: 20)
        return textfiel
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(tableview)
        tableview.frame = view.bounds
        tableview.delegate = self
        tableview.dataSource = self
        
        self.tabBarController?.tabBar.isHidden=true
        title = "Saved Messages"
        let myrightImage = UIImage(named: "search_image")?.withRenderingMode(.alwaysOriginal)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: myrightImage, style: .plain, target: self, action: #selector(adTaped))

        view.addSubview(homeview)
        homeview.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -0).isActive=true
        homeview.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive=true
        homeview.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive=true
        homeview.heightAnchor.constraint(equalToConstant: 70).isActive=true
        
        homeview.addSubview(attachmentimage)
        attachmentimage.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 20).isActive=true
        attachmentimage.leadingAnchor.constraint(equalTo: homeview.leadingAnchor,constant: 15).isActive=true
        
        homeview.addSubview(micimage)
        micimage.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 20).isActive=true
        micimage.trailingAnchor.constraint(equalTo: homeview.trailingAnchor,constant: -15).isActive=true
        
        homeview.addSubview(sendbtn)
        sendbtn.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 17).isActive=true
        sendbtn.trailingAnchor.constraint(equalTo: micimage.leadingAnchor,constant: -8).isActive=true
        sendbtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
        sendbtn.widthAnchor.constraint(equalToConstant: 30).isActive=true
        sendbtn.layer.cornerRadius = 15
       
        sendbtn.addSubview(arrowimage)
        arrowimage.topAnchor.constraint(equalTo: sendbtn.topAnchor,constant: 2).isActive=true
        arrowimage.leadingAnchor.constraint(equalTo: sendbtn.leadingAnchor,constant: 2).isActive=true
        
        homeview.addSubview(textfiel)
        textfiel.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 15).isActive=true
        textfiel.leadingAnchor.constraint(equalTo: attachmentimage.trailingAnchor,constant: 10).isActive=true
        textfiel.trailingAnchor.constraint(equalTo: sendbtn.leadingAnchor,constant: -10).isActive=true
        textfiel.heightAnchor.constraint(equalToConstant: 35).isActive=true
        textfiel.layer.cornerRadius = 15
        
        
        
        
        
        
    }
    
    @objc func adTaped(){
        navigationController?.popViewController(animated: true)
    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "PhotoTableCell1"
        tableview.register(PhotoTableCell.self, forCellReuseIdentifier: cellId)
        let cell = tableview.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! PhotoTableCell
        tableview.separatorStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height/1.4
    }
    
}







//    @objc func messagesent(_ sender:UIButton){
//        setUpdates()
//    }
    

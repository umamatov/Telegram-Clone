//
//  ChatViewController.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 28/03/22.
//

import UIKit

struct ChatMessage {
    let text: String
    let isIncoming: Bool
}

class ChatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let tableview = UITableView()
    
    let cellId = "LeftMytableCell"
    
    var chatmessage = [
        ChatMessage(text: "Hello, Github", isIncoming: true),
        ChatMessage(text: "Here's my message, Please use only for learning purpose from this project.", isIncoming: true),
        ChatMessage(text: "Hey How are you?", isIncoming: false),
        ChatMessage(text: "Ok I got you.", isIncoming: false),
        ChatMessage(text: "Thank you for understanding ", isIncoming: true),
        ChatMessage(text: "This is personal message view from contacts page ", isIncoming: false),
        
        
    ]
    
    var imageview: UIImageView = {
        let imageview = UIImageView()
        imageview.translatesAutoresizingMaskIntoConstraints=false
        imageview.image = UIImage(named: "polis_image")
        imageview.layer.masksToBounds = false
        imageview.layer.cornerRadius = 20
        imageview.clipsToBounds = true
        return imageview
    }()
    
    
    let sendbtn: UIButton = {
        let sendbtn = UIButton()
        sendbtn.translatesAutoresizingMaskIntoConstraints=false
        sendbtn.backgroundColor = .systemBlue
        sendbtn.layer.cornerRadius = 15
        sendbtn.layer.masksToBounds = false
        sendbtn.clipsToBounds = true
        sendbtn.addTarget(self, action: #selector(messageSent), for: .touchUpInside)
        return sendbtn
    }()
    
    var textfield: UITextView = {
        let textfield = UITextView()
        textfield.backgroundColor = UIColor.white
        textfield.translatesAutoresizingMaskIntoConstraints=false
        textfield.keyboardAppearance = .dark
        textfield.keyboardType = .default
        textfield.textColor = UIColor.black
        textfield.font = UIFont.systemFont(ofSize: 20)
        textfield.layer.cornerRadius = 30
        return textfield
    }()
    
    let titleLabel = UILabel(frame: CGRect(x: 0, y: -2, width: 0, height: 0))
    
    let subtitleLabel = UILabel(frame: CGRect(x: 0, y: 18, width: 0, height: 0))
    let notificationbtn = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden=true
        tableview.delegate = self
        tableview.dataSource = self
        view.addSubview(tableview)
        tableview.backgroundColor = UIColor(white: 0.95, alpha: 1)
        tableview.frame = view.bounds
        //        self.navigationItem.titleView = setTitle(title: "Jack Hack", subtitle: "Last seen recently")
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
        
        notificationbtn.translatesAutoresizingMaskIntoConstraints=false
        notificationbtn.backgroundColor = UIColor.white
        notificationbtn.widthAnchor.constraint(equalToConstant: 40).isActive=true
        notificationbtn.heightAnchor.constraint(equalToConstant: 40).isActive=true
        notificationbtn.layer.cornerRadius = 20
        notificationbtn.addTarget(self, action: #selector(pushingRegisterrPage), for: .touchUpInside)
        
        notificationbtn.addSubview(imageview)
        imageview.heightAnchor.constraint(equalToConstant: 40).isActive=true
        imageview.widthAnchor.constraint(equalToConstant: 40).isActive=true
        imageview.layer.cornerRadius = 20
        
        
        
        
        
        
        let barButtonItem = UIBarButtonItem(customView:notificationbtn)
        self.navigationItem.rightBarButtonItem = barButtonItem
        
        
    }
    
    
    @objc func pushingRegisterrPage(){
        let controller = NextPageViewController()
        controller.weblabel.text=titleLabel.text ?? ""
        controller.timelabel.text=subtitleLabel.text ?? ""
        controller.babyimage.image=imageview.image ?? UIImage(named: "baby_image")
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc func addTapped(){
        navigationController?.popViewController(animated: true)
    }
    
    @objc func messageSent(_ sender:UIButton) {
        setUpdates()
    }
    
    func setUpdates() {
        chatmessage.append(ChatMessage(text: textfield.text, isIncoming: false))
        tableview.reloadData()
        textfield.text=""
    }
    
    func setTitle(title:String, subtitle:String) -> UIView {
        
        titleLabel.backgroundColor = UIColor.clear
        titleLabel.textColor = UIColor.black
        titleLabel.font = UIFont.boldSystemFont(ofSize: 17)
        titleLabel.text = title
        titleLabel.sizeToFit()
        
        subtitleLabel.backgroundColor = UIColor.clear
        subtitleLabel.textColor = UIColor.systemGray
        subtitleLabel.font = UIFont.systemFont(ofSize: 12)
        subtitleLabel.text = subtitle
        subtitleLabel.sizeToFit()
        
        let titleView = UIView(frame: CGRect(x: 0, y: 0, width: max(titleLabel.frame.size.width, subtitleLabel.frame.size.width), height: 30))
        titleView.addSubview(titleLabel)
        titleView.addSubview(subtitleLabel)
        
        let widthDiff = subtitleLabel.frame.size.width - titleLabel.frame.size.width
        
        if widthDiff < 0 {
            let newX = widthDiff / 2
            subtitleLabel.frame.origin.x = abs(newX)
        } else {
            let newX = widthDiff / 2
            titleLabel.frame.origin.x = newX
        }
        
        return titleView
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatmessage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.register(LeftMytableCell.self, forCellReuseIdentifier: cellId)
        tableView.separatorStyle = .none
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! LeftMytableCell
        let chatMess = chatmessage[indexPath.row]
        
        
        
        //        cell.chatmessage = chatmessage[indexPath.row]
        cell.chatmessage = chatMess
        //        cell.messageLabel.text = chatmessage
        //        cell.isIncoming = chatmessage[indexPath.row].isIncoming
        
        //        cell.isIncoming = indexPath.row % 2 == 0 // checks for odd/even
        
        return cell
    }
    
    //    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    //        return UIScreen.main.bounds.height/1.2
    //    }
    
    
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footer = tableView.dequeueReusableHeaderFooterView(withIdentifier: FooterCollectionReusableView33.identifier)
        
        let homeView: UIView = {
            let homeview = UIView()
            homeview.translatesAutoresizingMaskIntoConstraints=false
            homeview.backgroundColor = UIColor(rgb: 0xF6F7F8)
            return homeview
        }()
        
        
        let attachmentimage: UIImageView = {
            let attechmentimage = UIImageView()
            attechmentimage.translatesAutoresizingMaskIntoConstraints=false
            attechmentimage.image = UIImage(named: "attachment_image")
            return attechmentimage
        }()
        
        let micimage: UIImageView = {
            let micimage = UIImageView()
            micimage.translatesAutoresizingMaskIntoConstraints=false
            micimage.image = UIImage(named: "mic_image")
            return micimage
        }()
        
        let arrowimage: UIImageView = {
            let arrowimage = UIImageView()
            arrowimage.translatesAutoresizingMaskIntoConstraints=false
            arrowimage.image = UIImage(named: "arrow_image")
            return arrowimage
        }()
        
        
        view.addSubview(homeView)
        homeView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: 10).isActive=true
        homeView.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 0).isActive=true
        homeView.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -0).isActive=true
        homeView.heightAnchor.constraint(equalToConstant: 70).isActive=true
        
        homeView.addSubview(attachmentimage)
        attachmentimage.topAnchor.constraint(equalTo: homeView.topAnchor,constant: 20).isActive=true
        attachmentimage.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        
        homeView.addSubview(micimage)
        micimage.topAnchor.constraint(equalTo: homeView.topAnchor,constant: 20).isActive=true
        micimage.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        
        homeView.addSubview(sendbtn)
        sendbtn.topAnchor.constraint(equalTo: homeView.topAnchor,constant: 15).isActive=true
        sendbtn.rightAnchor.constraint(equalTo: micimage.leftAnchor,constant: -5).isActive=true
        sendbtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
        sendbtn.widthAnchor.constraint(equalToConstant: 30).isActive=true
        sendbtn.layer.cornerRadius = 15
        
        sendbtn.addSubview(arrowimage)
        arrowimage.topAnchor.constraint(equalTo: sendbtn.topAnchor,constant: 2).isActive=true
        arrowimage.leftAnchor.constraint(equalTo: sendbtn.leftAnchor,constant: 2.5).isActive=true
        
        homeView.addSubview(textfield)
        textfield.topAnchor.constraint(equalTo: homeView.topAnchor,constant: 10).isActive=true
        textfield.leftAnchor.constraint(equalTo: attachmentimage.rightAnchor,constant: 10).isActive=true
        textfield.rightAnchor.constraint(equalTo: micimage.leftAnchor,constant: -40).isActive=true
        textfield.heightAnchor.constraint(equalToConstant: 40).isActive=true
        textfield.layer.cornerRadius = 20
        
        return footer
        
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 70
        
        
    }
    
    
}

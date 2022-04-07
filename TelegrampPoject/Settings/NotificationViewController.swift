//
//  NotificationViewController.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 07/04/22.
//

import UIKit

class NotificationViewController: UIViewController {

    
    
    let scrollView: UIScrollView = {
        var scrollView = UIScrollView()
        let screensize: CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        let screenHeigth = screensize.height
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 10, width: screenWidth, height: screenHeigth))
        scrollView.contentSize = CGSize(width: screenWidth, height: 1200)
        return scrollView
    }()
    
    var homeView: UIView = {
        let homeView = UIView()
        return homeView
    }()
    
    var messageLabel: UILabel = {
        let messageLabel = UILabel()
        messageLabel.translatesAutoresizingMaskIntoConstraints=false
        messageLabel.font = UIFont.systemFont(ofSize: 16)
        messageLabel.textColor = .systemGray
        messageLabel.text = "MESSAGE NOTIFICATIONS"
        return messageLabel
    }()
    
    var firstView: UIView = {
        let firstView = UIView()
        firstView.translatesAutoresizingMaskIntoConstraints = false
        firstView.backgroundColor = .white
        firstView.layer.cornerRadius = 30
        return firstView
    }()
    
    var chatView: UIView = {
        let chatView = UIView()
        chatView.translatesAutoresizingMaskIntoConstraints=false
        chatView.backgroundColor = .systemBlue
        chatView.layer.cornerRadius = 30
        return chatView
    }()
    
    var userImage: UIImageView = {
        let userImage = UIImageView()
        userImage.translatesAutoresizingMaskIntoConstraints=false
        userImage.image = UIImage(named: "user_image")
        return userImage
    }()
    
    var priivateLabel: UILabel = {
        let priivateLabel = UILabel()
        priivateLabel.translatesAutoresizingMaskIntoConstraints=false
        priivateLabel.font = UIFont.systemFont(ofSize: 20)
        priivateLabel.textColor = .black
        priivateLabel.text = "Private Chats"
        return priivateLabel
    }()
    
    var onLabel: UILabel = {
        let onLabel = UILabel()
        onLabel.translatesAutoresizingMaskIntoConstraints=false
        onLabel.font = UIFont.systemFont(ofSize: 18)
        onLabel.textColor = .systemGray
        onLabel.text = "On"
        return onLabel
    }()
    
    var rightImage: UIImageView = {
        let rightImage = UIImageView()
        rightImage.translatesAutoresizingMaskIntoConstraints=false
        rightImage.image = UIImage(named: "rieght_image")
        return rightImage
    }()
    
    var lineView: UIView = {
        let lineView = UIView()
        lineView.translatesAutoresizingMaskIntoConstraints=false
        lineView.backgroundColor = .systemGray5
        return lineView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        self.tabBarController?.tabBar.isHidden=true
        view.addSubview(scrollView)
        scrollView.addSubview(homeView)
        homeView.frame = scrollView.bounds
        title = "Notifications"
        
        homeView.addSubview(messageLabel)
        messageLabel.topAnchor.constraint(equalTo: homeView.topAnchor,constant: 20).isActive=true
        messageLabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 20).isActive=true

        homeView.addSubview(firstView)
        firstView.topAnchor.constraint(equalTo: messageLabel.bottomAnchor,constant: 10).isActive=true
        firstView.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        firstView.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        firstView.heightAnchor.constraint(equalToConstant: 200).isActive=true
        firstView.layer.cornerRadius = 7
        
        firstView.addSubview(chatView)
        chatView.topAnchor.constraint(equalTo: firstView.topAnchor,constant: 10).isActive=true
        chatView.leftAnchor.constraint(equalTo: firstView.leftAnchor,constant: 10).isActive=true
        chatView.heightAnchor.constraint(equalToConstant: 32).isActive=true
        chatView.widthAnchor.constraint(equalToConstant: 30).isActive=true
        chatView.layer.cornerRadius = 5
        
        chatView.addSubview(userImage)
        userImage.topAnchor.constraint(equalTo: chatView.topAnchor,constant: 3).isActive=true
        userImage.leftAnchor.constraint(equalTo: chatView.leftAnchor,constant: 3).isActive=true

        firstView.addSubview(priivateLabel)
        priivateLabel.topAnchor.constraint(equalTo: firstView.topAnchor,constant: 13).isActive=true
        priivateLabel.leftAnchor.constraint(equalTo: chatView.rightAnchor,constant: 10).isActive=true
        
        firstView.addSubview(rightImage)
        rightImage.topAnchor.constraint(equalTo: firstView.topAnchor,constant: 13).isActive=true
        rightImage.rightAnchor.constraint(equalTo: firstView.rightAnchor,constant: -10).isActive=true
        
        firstView.addSubview(onLabel)
        onLabel.topAnchor.constraint(equalTo: firstView.topAnchor,constant: 13).isActive=true
        onLabel.rightAnchor.constraint(equalTo: rightImage.leftAnchor,constant: -7).isActive=true
        
        firstView.addSubview(lineView)
        lineView.topAnchor.constraint(equalTo: chatView.bottomAnchor,constant: 5).isActive=true
        lineView.leftAnchor.constraint(equalTo: chatView.rightAnchor,constant: 10).isActive=true
        lineView.rightAnchor.constraint(equalTo: firstView.rightAnchor).isActive=true
        lineView.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        
        
        
      
    }
    


}

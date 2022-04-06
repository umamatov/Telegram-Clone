//
//  ChatViewController.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 06/04/22.
//

import UIKit

class ChatTappedViewController: UIViewController {

    
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
    
    var fileImage: UIImageView = {
        let fileImage = UIImageView()
        fileImage.translatesAutoresizingMaskIntoConstraints=false
        fileImage.image = UIImage(named: "file_image")
        return fileImage
    }()
    
    var createLabel: UILabel = {
        let createLabeel = UILabel()
        createLabeel.translatesAutoresizingMaskIntoConstraints=false
        createLabeel.font = UIFont.systemFont(ofSize: 14)
        createLabeel.textColor = .systemGray
        createLabeel.text = "Create floders for different groups of chats"
        createLabeel.numberOfLines = 3
        return createLabeel
    }()
    
    var andLabel: UILabel = {
        let andLabel = UILabel()
        andLabel.translatesAutoresizingMaskIntoConstraints=false
        andLabel.font = UIFont.systemFont(ofSize: 14)
        andLabel.textColor = .systemGray
        andLabel.text = " and quickly switch between them."
        return andLabel
    }()
    
    var folderLabel: UILabel = {
        let folderLabel = UILabel()
        folderLabel.translatesAutoresizingMaskIntoConstraints=false
        folderLabel.font = UIFont.systemFont(ofSize: 15)
        folderLabel.textColor = .systemGray
        folderLabel.text = "RECOMMENDED FLODERS"
        return folderLabel
    }()
    
    var firstView: UIView = {
        let firstView = UIView()
        firstView.translatesAutoresizingMaskIntoConstraints=false
        firstView.layer.cornerRadius = 30
        firstView.backgroundColor = .white
        return firstView
    }()
    
    var unreadLabel: UILabel = {
        let unreadLabel = UILabel()
        unreadLabel.translatesAutoresizingMaskIntoConstraints=false
        unreadLabel.font = UIFont.systemFont(ofSize: 16)
        unreadLabel.textColor = .black
        unreadLabel.text = "Unread"
        return unreadLabel
    }()
    
    var newLabel: UILabel = {
        let newlabel = UILabel()
        newlabel.translatesAutoresizingMaskIntoConstraints=false
        newlabel.font = UIFont.systemFont(ofSize: 13)
        newlabel.textColor = .systemGray
        newlabel.text = "New messages from all chats."
        return newlabel
    }()
    
    var addBtn: UIButton = {
        let addBtn = UIButton()
        addBtn.translatesAutoresizingMaskIntoConstraints=false
        addBtn.backgroundColor = .systemBlue
        addBtn.layer.cornerRadius = 30
        addBtn.setTitle("ADD", for: .normal)
        return addBtn
    }()
    
    var lineView: UIView = {
        let lineView = UIView()
        lineView.translatesAutoresizingMaskIntoConstraints=false
        lineView.backgroundColor = .systemGray5
        return lineView
    }()
    
    var personalLabel: UILabel = {
        let personalLabel = UILabel()
        personalLabel.translatesAutoresizingMaskIntoConstraints=false
        personalLabel.font = UIFont.systemFont(ofSize: 16)
        personalLabel.text = "Personal"
        return personalLabel
    }()
    
    var onlyLabel: UILabel = {
        let onlyLabel = UILabel()
        onlyLabel.translatesAutoresizingMaskIntoConstraints=false
        onlyLabel.font = UIFont.systemFont(ofSize: 13)
        onlyLabel.textColor = .systemGray
        onlyLabel.text = "Only messages from personal chats."
        return onlyLabel
    }()
    
    var nextBtn: UIButton = {
        let nextBtn = UIButton()
        nextBtn.translatesAutoresizingMaskIntoConstraints=false
        nextBtn.backgroundColor = .systemBlue
        nextBtn.layer.cornerRadius = 30
        nextBtn.setTitle("ADD", for: .normal)
        return nextBtn
    }()
    
    var tollView: UIView = {
        let tollView = UIView()
        tollView.translatesAutoresizingMaskIntoConstraints=false
        tollView.backgroundColor = .systemGray5
        return tollView
    }()
    
    var customBtn: UIButton = {
        let customBtn = UIButton()
        customBtn.translatesAutoresizingMaskIntoConstraints=false
        customBtn.setTitle("Add Custom Folder", for: .normal)
        customBtn.setTitleColor(.systemBlue, for: .normal)
        customBtn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        return customBtn
    }()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        self.tabBarController?.tabBar.isHidden=true
        view.addSubview(scrollView)
        scrollView.addSubview(homeView)
        homeView.frame = scrollView.bounds
        title = "Floders"
        
        homeView.addSubview(fileImage)
        fileImage.topAnchor.constraint(equalTo: homeView.topAnchor,constant: 20).isActive=true
        fileImage.centerXAnchor.constraint(equalTo: homeView.centerXAnchor).isActive=true
        fileImage.heightAnchor.constraint(equalToConstant: 100).isActive=true
        fileImage.widthAnchor.constraint(equalToConstant: 100).isActive=true
        
        homeView.addSubview(createLabel)
        createLabel.topAnchor.constraint(equalTo: fileImage.bottomAnchor,constant: 10).isActive=true
        createLabel.centerXAnchor.constraint(equalTo: homeView.centerXAnchor).isActive=true
        
        homeView.addSubview(andLabel)
        andLabel.topAnchor.constraint(equalTo: createLabel.bottomAnchor,constant: 1).isActive=true
        andLabel.centerXAnchor.constraint(equalTo: homeView.centerXAnchor).isActive=true
        
        homeView.addSubview(folderLabel)
        folderLabel.topAnchor.constraint(equalTo: andLabel.bottomAnchor,constant: 20).isActive=true
        folderLabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 20).isActive=true
        
        homeView.addSubview(firstView)
        firstView.topAnchor.constraint(equalTo: folderLabel.bottomAnchor,constant: 10).isActive=true
        firstView.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        firstView.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        firstView.heightAnchor.constraint(equalToConstant: 180).isActive=true
        firstView.layer.cornerRadius = 10

        firstView.addSubview(unreadLabel)
        unreadLabel.topAnchor.constraint(equalTo: firstView.topAnchor,constant: 15).isActive=true
        unreadLabel.leftAnchor.constraint(equalTo: firstView.leftAnchor,constant: 10).isActive=true
        
        firstView.addSubview(newLabel)
        newLabel.topAnchor.constraint(equalTo: unreadLabel.bottomAnchor,constant: 5).isActive=true
        newLabel.leftAnchor.constraint(equalTo: firstView.leftAnchor,constant: 10).isActive=true
        
        firstView.addSubview(addBtn)
        addBtn.topAnchor.constraint(equalTo: firstView.topAnchor,constant: 20).isActive=true
        addBtn.rightAnchor.constraint(equalTo: firstView.rightAnchor,constant: -10).isActive=true
        addBtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
        addBtn.widthAnchor.constraint(equalToConstant: 65).isActive=true
        addBtn.layer.cornerRadius = 15
        
        firstView.addSubview(lineView)
        lineView.topAnchor.constraint(equalTo: newLabel.bottomAnchor,constant: 15).isActive=true
        lineView.leftAnchor.constraint(equalTo: firstView.leftAnchor,constant: 10).isActive=true
        lineView.rightAnchor.constraint(equalTo: firstView.rightAnchor).isActive=true
        lineView.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        firstView.addSubview(personalLabel)
        personalLabel.topAnchor.constraint(equalTo: lineView.bottomAnchor,constant: 10).isActive=true
        personalLabel.leftAnchor.constraint(equalTo: firstView.leftAnchor,constant: 10).isActive=true
        
        firstView.addSubview(onlyLabel)
        onlyLabel.topAnchor.constraint(equalTo: personalLabel.bottomAnchor,constant: 5).isActive=true
        onlyLabel.leftAnchor.constraint(equalTo: firstView.leftAnchor,constant: 10).isActive=true

        firstView.addSubview(nextBtn)
        nextBtn.topAnchor.constraint(equalTo: lineView.topAnchor,constant: 20).isActive=true
        nextBtn.rightAnchor.constraint(equalTo: firstView.rightAnchor,constant: -10).isActive=true
        nextBtn.heightAnchor.constraint(equalToConstant: 30).isActive=true
        nextBtn.widthAnchor.constraint(equalToConstant: 65).isActive=true
        nextBtn.layer.cornerRadius = 15
        
        firstView.addSubview(tollView)
        tollView.topAnchor.constraint(equalTo: onlyLabel.bottomAnchor,constant: 15).isActive=true
        tollView.leftAnchor.constraint(equalTo: firstView.leftAnchor,constant: 10).isActive=true
        tollView.rightAnchor.constraint(equalTo: firstView.rightAnchor).isActive=true
        tollView.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        firstView.addSubview(customBtn)
        customBtn.bottomAnchor.constraint(equalTo: firstView.bottomAnchor,constant: -6).isActive=true
        customBtn.leftAnchor.constraint(equalTo: firstView.leftAnchor,constant: 10).isActive=true
        
    }
    


}

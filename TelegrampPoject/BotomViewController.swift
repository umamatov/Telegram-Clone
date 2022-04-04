//
//  BotomViewController.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 31/03/22.
//

import UIKit

class BotomViewController: UIViewController, UIScrollViewDelegate {

    
    let scrollView: UIScrollView = {
        var scrollView = UIScrollView()
        let screensize: CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        let screenHeigth = screensize.height
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 60, width: screenWidth, height: screenHeigth))
        scrollView.contentSize = CGSize(width: screenWidth, height: 1000)
        return scrollView
    }()
    
    var homeview: UIView = {
        let homeview = UIView(frame: CGRect(x: 0, y: 100, width: 0, height: 0))
//        homeview.translatesAutoresizingMaskIntoConstraints=false
        return homeview
    }()
    
    
    
    var customeview: UIView = {
        let homeview = UIView()
        homeview.translatesAutoresizingMaskIntoConstraints=false
        homeview.backgroundColor = UIColor.white
        return homeview
    }()
    
    var usernamelabel: UILabel = {
        let usernamelabel = UILabel()
        usernamelabel.translatesAutoresizingMaskIntoConstraints=false
        usernamelabel.font = UIFont.systemFont(ofSize: 20)
        usernamelabel.textColor = UIColor.black
        usernamelabel.text = "Username"
        return usernamelabel
    }()
    
    var cancellabel: UILabel = {
        let cancellabel = UILabel()
        cancellabel.translatesAutoresizingMaskIntoConstraints=false
        cancellabel.font = UIFont.systemFont(ofSize: 20)
        cancellabel.textColor = UIColor.systemBlue
        cancellabel.text = "Cancel"
        return cancellabel
    }()
    
    var donelabel: UILabel = {
        let donelabel = UILabel()
        donelabel.translatesAutoresizingMaskIntoConstraints=false
        donelabel.font = UIFont.systemFont(ofSize: 20)
        donelabel.textColor = UIColor.systemBlue
        donelabel.text = "Done"
        return donelabel
    }()
    
    var textfield: UITextField = {
        let textfield = UITextField()
        textfield.keyboardType = .default
        textfield.keyboardAppearance = .dark
        textfield.layer.cornerRadius = 7
        textfield.translatesAutoresizingMaskIntoConstraints=false
        textfield.backgroundColor = UIColor.white
        textfield.textColor = UIColor.black
        textfield.font = UIFont.systemFont(ofSize: 20)
        textfield.text = "Username   "
        return textfield
    }()
    
    var canlabel: UILabel = {
        let canlabel = UILabel()
        canlabel.translatesAutoresizingMaskIntoConstraints=false
        canlabel.font = UIFont.systemFont(ofSize: 15)
        canlabel.textColor = UIColor.systemGray
        canlabel.text = "You can choose a username on Telegram. if you do, people will be able to find you by this username and contact you without neding your phone number. "
        canlabel.numberOfLines = 4
        return canlabel
    }()
    
    var uselabel: UILabel = {
        let uselabel = UILabel()
        uselabel.translatesAutoresizingMaskIntoConstraints=false
        uselabel.font = UIFont.systemFont(ofSize: 15)
        uselabel.textColor = UIColor.systemGray
        uselabel.text = "You can use A-Z, 0-9 and underscores. Minimum lenght is 5 characters."
        uselabel.numberOfLines = 2
        return uselabel
    }()
    
    var openlabel: UILabel = {
        let openlabel = UILabel()
        openlabel.translatesAutoresizingMaskIntoConstraints=false
        openlabel.font = UIFont.systemFont(ofSize: 15)
        openlabel.textColor = UIColor.systemGray
        openlabel.text = "This link opens a chat with you:"
        return openlabel
    }()
    
    var alertlabel: UILabel = {
        let alertlabel = UILabel()
        alertlabel.translatesAutoresizingMaskIntoConstraints=false
        alertlabel.font = UIFont.systemFont(ofSize: 15)
        alertlabel.textColor = UIColor.systemBlue
        alertlabel.text = "https://t.me/"
        return alertlabel
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemGray6
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 44))
        view.addSubview(navBar)

        let navItem = UINavigationItem(title: "Username")
        let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: nil)
        let cancelItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: nil, action: nil)
        navItem.rightBarButtonItem = doneItem
        navItem.leftBarButtonItem = cancelItem

        
        navBar.setItems([navItem], animated: false)
        view.addSubview(scrollView)
        scrollView.addSubview(homeview)
        homeview.frame = view.bounds

        homeview.addSubview(textfield)
        textfield.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 30).isActive=true
        textfield.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 15).isActive=true
        textfield.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -15).isActive=true
        textfield.heightAnchor.constraint(equalToConstant: 50).isActive=true
        
        homeview.addSubview(canlabel)
        canlabel.topAnchor.constraint(equalTo: textfield.bottomAnchor,constant: 10).isActive=true
        canlabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 25).isActive=true
        canlabel.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -25).isActive=true
        
        homeview.addSubview(uselabel)
        uselabel.topAnchor.constraint(equalTo: canlabel.bottomAnchor,constant: 15).isActive=true
        uselabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 25).isActive=true
        uselabel.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -25).isActive=true
        
        homeview.addSubview(openlabel)
        openlabel.topAnchor.constraint(equalTo: uselabel.bottomAnchor,constant: 20).isActive=true
        openlabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 25).isActive=true
        
        homeview.addSubview(alertlabel)
        alertlabel.topAnchor.constraint(equalTo: openlabel.bottomAnchor,constant: 5).isActive=true
        alertlabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 25).isActive=true
        
        
        
    }
    

}

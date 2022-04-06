//
//  ContacviewController.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 30/03/22.
//

import UIKit

class ContactViewComtroller: UIViewController {
    static let indentifier = "ContactViewComtroller"
    
    var homeview: UIView = {
        let homeview = UIView()
        return homeview
    }()
    
    var sendview: UIView = {
        let sendview = UIView()
        sendview.translatesAutoresizingMaskIntoConstraints=false
        sendview.backgroundColor = UIColor.systemBlue
        sendview.clipsToBounds = true
        sendview.layer.masksToBounds = false
        sendview.layer.cornerRadius = 50
        return sendview
    }()
    
    var compassimage: UIImageView = {
        let compassimage = UIImageView()
        compassimage.translatesAutoresizingMaskIntoConstraints=false
        compassimage.image = UIImage(named: "send_image")
        return compassimage
    }()
    
    var peoplelabel: UILabel = {
        let peoplelabel = UILabel()
        peoplelabel.translatesAutoresizingMaskIntoConstraints=false
        peoplelabel.font = UIFont.systemFont(ofSize: 25)
        peoplelabel.textColor = UIColor.black
        peoplelabel.text = "People Nearby"
        return peoplelabel
    }()
    
    var alertlabel: UILabel = {
        let alertlabel = UILabel()
        alertlabel.translatesAutoresizingMaskIntoConstraints=false
        alertlabel.font = UIFont.systemFont(ofSize: 16)
        alertlabel.textColor = UIColor.black
        alertlabel.numberOfLines = 4
        alertlabel.text = "Quickly add people nearby who are also viewing this section and discover local"
        return alertlabel
    }()
    
    var grouplabel: UILabel = {
        let grouplabel = UILabel()
        grouplabel.translatesAutoresizingMaskIntoConstraints=false
        grouplabel.font = UIFont.systemFont(ofSize: 16)
        grouplabel.textColor = UIColor.black
        grouplabel.text = "group chats."
        return grouplabel
    }()
    
    var locationlabel: UILabel = {
        let locationlabel = UILabel()
        locationlabel.translatesAutoresizingMaskIntoConstraints=false
        locationlabel.font = UIFont.systemFont(ofSize: 16)
        locationlabel.textColor = UIColor.black
        locationlabel.text = "Please allow on location access to enable"
        return locationlabel
    }()
    
    var thislabel: UILabel = {
        let thislabel = UILabel()
        thislabel.translatesAutoresizingMaskIntoConstraints=false
        thislabel.font = UIFont.systemFont(ofSize: 16)
        thislabel.textColor = UIColor.black
        thislabel.text = "this feature."
        return thislabel
    }()
    
    var allowbtn: UIButton = {
        let allowbtn = UIButton()
        allowbtn.translatesAutoresizingMaskIntoConstraints=false
        allowbtn.backgroundColor = UIColor.systemBlue
        allowbtn.setTitleColor(UIColor.white, for: .normal)
        allowbtn.setTitle("Allow in Settings", for: .normal)
        allowbtn.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        allowbtn.layer.cornerRadius = 30
        return allowbtn
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden=true
        view.backgroundColor = .white
        title = "People Nearby"
        view.addSubview(homeview)
        homeview.frame = view.bounds
        
        view.addSubview(homeview)
        homeview.topAnchor.constraint(equalTo: view.topAnchor,constant: 0).isActive=true
        homeview.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 0).isActive=true
        homeview.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -0).isActive=true
        homeview.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: 0).isActive=true
        
        homeview.addSubview(sendview)
        sendview.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 180).isActive=true
        sendview.centerXAnchor.constraint(equalTo: homeview.centerXAnchor).isActive=true
        sendview.heightAnchor.constraint(equalToConstant: 100).isActive=true
        sendview.widthAnchor.constraint(equalToConstant: 100).isActive=true
        sendview.layer.cornerRadius = 50
        
        sendview.addSubview(compassimage)
        compassimage.topAnchor.constraint(equalTo: sendview.topAnchor,constant: 28).isActive=true
        compassimage.leftAnchor.constraint(equalTo: sendview.leftAnchor,constant: 23).isActive=true
        compassimage.heightAnchor.constraint(equalToConstant: 50).isActive=true
        compassimage.widthAnchor.constraint(equalToConstant: 50).isActive=true
        
        homeview.addSubview(peoplelabel)
        peoplelabel.topAnchor.constraint(equalTo: sendview.bottomAnchor,constant: 80).isActive=true
        peoplelabel.centerXAnchor.constraint(equalTo: homeview.centerXAnchor).isActive=true
        
        homeview.addSubview(alertlabel)
        alertlabel.topAnchor.constraint(equalTo: peoplelabel.bottomAnchor,constant: 20).isActive=true
        alertlabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 40).isActive=true
        alertlabel.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -10).isActive=true
        
        homeview.addSubview(grouplabel)
        grouplabel.topAnchor.constraint(equalTo: alertlabel.bottomAnchor,constant: 1).isActive=true
        grouplabel.centerXAnchor.constraint(equalTo: homeview.centerXAnchor).isActive=true
    
        homeview.addSubview(locationlabel)
        locationlabel.topAnchor.constraint(equalTo: grouplabel.bottomAnchor,constant: 20).isActive=true
        locationlabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 40).isActive=true
        locationlabel.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -10).isActive=true
        
        homeview.addSubview(thislabel)
        thislabel.topAnchor.constraint(equalTo: locationlabel.bottomAnchor,constant: 1).isActive=true
        thislabel.centerXAnchor.constraint(equalTo: homeview.centerXAnchor).isActive=true
        
        homeview.addSubview(allowbtn)
        allowbtn.bottomAnchor.constraint(equalTo: homeview.bottomAnchor,constant: -60).isActive=true
        allowbtn.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 15).isActive=true
        allowbtn.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -15).isActive=true
        allowbtn.heightAnchor.constraint(equalToConstant: 50).isActive=true
        allowbtn.layer.cornerRadius = 10
        
    }
}

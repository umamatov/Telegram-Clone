//
//  SecondeViewController.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 04/04/22.
//

import UIKit

class SecondeViewController: UIViewController {

    
     let scrollView: UIScrollView = {
         var scrollView = UIScrollView()
         let screensize: CGRect = UIScreen.main.bounds
         let screenWidth = screensize.width
         let screenHeigth = screensize.height
         scrollView = UIScrollView(frame: CGRect(x: 0, y: 10, width: screenWidth, height: screenHeigth))
         scrollView.contentSize = CGSize(width: screenWidth, height: 2000)
         return scrollView
     }()
    
    var homeview: UIView = {
        let homeview = UIView()
        return homeview
    }()
    
    var macbookImage: UIImageView = {
        let macbookImage = UIImageView()
        macbookImage.translatesAutoresizingMaskIntoConstraints=false
        
        macbookImage.image = UIImage(named: "macbook_image")
        return macbookImage
    }()
    
    var linkLabel: UILabel = {
        let linkLabel = UILabel()
        linkLabel.translatesAutoresizingMaskIntoConstraints=false
        linkLabel.textColor = UIColor.systemGray
        linkLabel.font = UIFont.systemFont(ofSize: 13)
        linkLabel.text = "Link Telegram Desktop or Telegram Web by"
        return linkLabel
    }()
    
    var qrLabel: UILabel = {
        let qrlabel = UILabel()
        qrlabel.translatesAutoresizingMaskIntoConstraints=false
        qrlabel.font = UIFont.systemFont(ofSize: 13)
        qrlabel.textColor = UIColor.systemGray
        qrlabel.text = "scanning a QR code "
        return qrlabel
    }()
    
    var deviceBtn: UIButton = {
        let deviceBtn = UIButton()
        deviceBtn.translatesAutoresizingMaskIntoConstraints=false
        deviceBtn.backgroundColor = UIColor.systemBlue
        deviceBtn.layer.cornerRadius = 30
        deviceBtn.layer.masksToBounds = false
        deviceBtn.setTitleColor(UIColor.white, for: .normal)
        deviceBtn.setTitle("Link Desktop Device", for: .normal)
        return deviceBtn
    }()
    
    var imageView: UIImageView = {
        let imageview = UIImageView()
        imageview.translatesAutoresizingMaskIntoConstraints=false
        imageview.image = UIImage(named: "qr_image")
        return imageview
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemGray5
        self.tabBarController?.tabBar.isHidden=true
        view.addSubview(scrollView)
        scrollView.addSubview(homeview)
        homeview.frame = scrollView.bounds
        title = "Devices"

        
        let rieghtlabel = UILabel()
        rieghtlabel.translatesAutoresizingMaskIntoConstraints=false
        rieghtlabel.textColor = UIColor.systemBlue
        rieghtlabel.font = UIFont.systemFont(ofSize: 20)
        rieghtlabel.text = "Edit"
        let barButtonItem = UIBarButtonItem(customView:rieghtlabel)
        self.navigationItem.rightBarButtonItem = barButtonItem
        
        homeview.addSubview(macbookImage)
        macbookImage.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 30).isActive=true
        macbookImage.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 110).isActive=true
        macbookImage.heightAnchor.constraint(equalToConstant: 150).isActive=true
        macbookImage.widthAnchor.constraint(equalToConstant: 150).isActive=true
        
        homeview.addSubview(linkLabel)
        linkLabel.topAnchor.constraint(equalTo: macbookImage.bottomAnchor,constant: 20).isActive=true
        linkLabel.centerXAnchor.constraint(equalTo: homeview.centerXAnchor).isActive=true
        
        homeview.addSubview(qrLabel)
        qrLabel.topAnchor.constraint(equalTo: linkLabel.bottomAnchor,constant: 0).isActive=true
        qrLabel.centerXAnchor.constraint(equalTo: homeview.centerXAnchor).isActive=true
        
        homeview.addSubview(deviceBtn)
        deviceBtn.topAnchor.constraint(equalTo: qrLabel.bottomAnchor,constant: 20).isActive=true
        deviceBtn.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        deviceBtn.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -10).isActive=true
        deviceBtn.heightAnchor.constraint(equalToConstant: 50).isActive=true
        deviceBtn.layer.cornerRadius = 7
        
        deviceBtn.addSubview(imageView)
        imageView.topAnchor.constraint(equalTo: deviceBtn.topAnchor,constant: 13).isActive=true
        imageView.leftAnchor.constraint(equalTo: deviceBtn.leftAnchor,constant: 60).isActive=true
        

        
    }


}

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
         scrollView.contentSize = CGSize(width: screenWidth, height: 1200)
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
    
    var currentLabel: UILabel = {
        let currentLabel = UILabel()
        currentLabel.translatesAutoresizingMaskIntoConstraints=false
        currentLabel.font = UIFont.systemFont(ofSize: 16)
        currentLabel.textColor = UIColor.systemGray
        currentLabel.text = "CURRENT SESSION"
        return currentLabel
    }()
    
    var sessionView: UIView = {
        let sessionView = UIView()
        sessionView.translatesAutoresizingMaskIntoConstraints=false
        sessionView.backgroundColor = .white
        sessionView.layer.cornerRadius = 30
        sessionView.layer.masksToBounds = false
        sessionView.clipsToBounds = true
        return sessionView
    }()
    
    var blueView: UIView = {
        let blueView = UIView()
        blueView.translatesAutoresizingMaskIntoConstraints=false
        blueView.backgroundColor = UIColor.systemBlue
        blueView.layer.cornerRadius = 30
        blueView.layer.masksToBounds = false
        return blueView
    }()
    
    var smartphoneImage: UIImageView = {
        let smartphoneImage = UIImageView()
        smartphoneImage.translatesAutoresizingMaskIntoConstraints=false
        smartphoneImage.image = UIImage(named: "smartphone_image")
        return smartphoneImage
    }()
    
    var iphoneLabel: UILabel = {
        let iphoneLabel = UILabel()
        iphoneLabel.translatesAutoresizingMaskIntoConstraints=false
        iphoneLabel.font = UIFont.systemFont(ofSize: 17)
        iphoneLabel.textColor = .black
        iphoneLabel.text = "iPhone 6"
        return iphoneLabel
    }()
    
    var iosLabel: UILabel = {
        let iosLabel = UILabel()
        iosLabel.translatesAutoresizingMaskIntoConstraints=false
        iosLabel.font = UIFont.systemFont(ofSize: 15)
        iosLabel.textColor = .black
        iosLabel.text = "Telegram iOS 8.6"
        return iosLabel
    }()
    
    var onlineLabel: UILabel = {
        let onlineLabel = UILabel()
        onlineLabel.translatesAutoresizingMaskIntoConstraints=false
        onlineLabel.font = UIFont.systemFont(ofSize: 15)
        onlineLabel.textColor = UIColor.systemGray
        onlineLabel.text = "Tashkent, Uzbekistan • online"
        return onlineLabel
    }()
    
    var lineView: UIView = {
        let lineView = UIView()
        lineView.translatesAutoresizingMaskIntoConstraints=false
        lineView.backgroundColor = UIColor.systemGray5
        return lineView
    }()
    
    var handLabel: UILabel = {
        let handLabel = UILabel()
        handLabel.translatesAutoresizingMaskIntoConstraints=false
        handLabel.font = UIFont.systemFont(ofSize: 30)
        handLabel.textColor = UIColor.red
        handLabel.text = "✋"
        return handLabel
    }()
    
    var terminateBtn: UIButton = {
        let terminateBtn = UIButton()
        terminateBtn.translatesAutoresizingMaskIntoConstraints=false
        terminateBtn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        terminateBtn.setTitleColor(.red, for: .normal)
        terminateBtn.setTitle("Terminate all other sessions", for: .normal)
        return terminateBtn
    }()
    
    var logsLabel: UILabel = {
        let logsLabel = UILabel()
        logsLabel.translatesAutoresizingMaskIntoConstraints=false
        logsLabel.font = UIFont.systemFont(ofSize: 14)
        logsLabel.textColor = UIColor.systemGray
        logsLabel.text = "Logs out all device except for this one."
        return logsLabel
    }()
    
    var activelabel: UILabel = {
        let activeLabel = UILabel()
        activeLabel.translatesAutoresizingMaskIntoConstraints=false
        activeLabel.font = UIFont.systemFont(ofSize: 16)
        activeLabel.textColor = UIColor.systemGray
        activeLabel.text = "ACTIVE SESSIONS"
        return activeLabel
    }()
    
    var bigView: UIView = {
        let bigView = UIView()
        bigView.translatesAutoresizingMaskIntoConstraints=false
        bigView.backgroundColor = .white
        bigView.layer.masksToBounds = false
        bigView.layer.cornerRadius = 30
        return bigView
    }()
    
    var firstView: UIView = {
        let firstView = UIView()
        firstView.translatesAutoresizingMaskIntoConstraints=false
        firstView.backgroundColor = UIColor.systemBlue
        firstView.layer.masksToBounds = false
        firstView.layer.cornerRadius = 30
        return firstView
    }()
    
    var computerImage: UIImageView = {
        let computerImage = UIImageView()
        computerImage.translatesAutoresizingMaskIntoConstraints=false
        computerImage.image = UIImage(named: "mac_image1")
        return computerImage
    }()
    
    var airLabel: UILabel = {
        let airLabel = UILabel()
        airLabel.translatesAutoresizingMaskIntoConstraints=false
        airLabel.font = UIFont.systemFont(ofSize: 17)
        airLabel.textColor = .black
        airLabel.text = "MacBook Air M1"
        return airLabel
    }()
    
    var macosLabel: UILabel = {
        let macosLabel = UILabel()
        macosLabel.translatesAutoresizingMaskIntoConstraints=false
        macosLabel.font = UIFont.systemFont(ofSize: 15)
        macosLabel.textColor = .black
        macosLabel.text = "Telegram macOS 8.5"
        return macosLabel
    }()
    
    var timeLabel: UILabel = {
        let timeLabel = UILabel()
        timeLabel.translatesAutoresizingMaskIntoConstraints=false
        timeLabel.font = UIFont.systemFont(ofSize: 14)
        timeLabel.textColor = UIColor.systemGray
        timeLabel.text = "Tashekent, Uzbekistan • 11 minutes ago"
        return timeLabel
    }()
    
    var lorgeView: UIView = {
        let lorgeView = UIView()
        lorgeView.translatesAutoresizingMaskIntoConstraints=false
        lorgeView.backgroundColor = UIColor.systemGray5
        return lorgeView
    }()
    
    var secondeView: UIView = {
        let secondeView = UIView()
        secondeView.translatesAutoresizingMaskIntoConstraints=false
        secondeView.backgroundColor = UIColor(rgb: 0x7ED321)
        secondeView.layer.masksToBounds = false
        secondeView.layer.cornerRadius = 30
        return secondeView
    }()
    
    var iconImage: UIImageView = {
        let iconImage = UIImageView()
        iconImage.translatesAutoresizingMaskIntoConstraints=false
        iconImage.image = UIImage(named: "icon_image")
        return iconImage
    }()
    
    var samsungLabel: UILabel = {
        let samsungLabel = UILabel()
        samsungLabel.translatesAutoresizingMaskIntoConstraints=false
        samsungLabel.font = UIFont.systemFont(ofSize: 17)
        samsungLabel.textColor = .black
        samsungLabel.text = "Samsung Galaxy A32"
        return samsungLabel
    }()
    
    var androidLabel: UILabel = {
        let androidLaabel = UILabel()
        androidLaabel.translatesAutoresizingMaskIntoConstraints=false
        androidLaabel.font = UIFont.systemFont(ofSize: 15)
        androidLaabel.textColor = .black
        androidLaabel.text = "Telegram Android 8.6.2"
        return androidLaabel
    }()
    
    var tashkentLabel: UILabel = {
        let tashkentLabel = UILabel()
        tashkentLabel.translatesAutoresizingMaskIntoConstraints=false
        tashkentLabel.font = UIFont.systemFont(ofSize: 14)
        tashkentLabel.textColor = UIColor.systemGray
        tashkentLabel.text = "Tashkent, Uzbekistan • 2 hours ago"
        return tashkentLabel
    }()
    
    var smileView: UIView = {
        let smileView = UIView()
        smileView.translatesAutoresizingMaskIntoConstraints=false
        smileView.backgroundColor = UIColor.systemGray5
        return smileView
    }()
    
    var thirdView: UIView = {
        let thirdView = UIView()
        thirdView.translatesAutoresizingMaskIntoConstraints=false
        thirdView.backgroundColor = UIColor.systemBlue
        thirdView.layer.masksToBounds = false
        thirdView.layer.cornerRadius = 30
        return thirdView
    }()
    
    var iPhoneImage: UIImageView = {
        let iPhoneImage = UIImageView()
        iPhoneImage.translatesAutoresizingMaskIntoConstraints=false
        iPhoneImage.image = UIImage(named: "smartphone_image")
        return iPhoneImage
    }()
    
    var nextPhoneLabel: UILabel = {
        let nextPhoneLabel = UILabel()
        nextPhoneLabel.translatesAutoresizingMaskIntoConstraints=false
        nextPhoneLabel.font = UIFont.systemFont(ofSize: 17)
        nextPhoneLabel.textColor = .black
        nextPhoneLabel.text = "iPhone 6"
        return nextPhoneLabel
    }()
    
    var alertLabel: UILabel = {
        let alertLabel = UILabel()
        alertLabel.translatesAutoresizingMaskIntoConstraints=false
        alertLabel.font = UIFont.systemFont(ofSize: 15)
        alertLabel.textColor = .black
        alertLabel.text = "Telegram iOS 8.6"
        return alertLabel
    }()
    
    var uzbekistanLabel: UILabel = {
        let uzbekistanLabel = UILabel()
        uzbekistanLabel.translatesAutoresizingMaskIntoConstraints=false
        uzbekistanLabel.font = UIFont.systemFont(ofSize: 15)
        uzbekistanLabel.textColor = UIColor.systemGray
        uzbekistanLabel.text = "Tashkent, Uzbekistan • 02/04/22"
        return uzbekistanLabel
    }()
    
    var buetuflyView: UIView = {
        let buetuflyView = UIView()
        buetuflyView.translatesAutoresizingMaskIntoConstraints=false
        buetuflyView.backgroundColor = UIColor.systemGray5
        return buetuflyView
    }()
    
    var fourthView: UIView = {
        let fourthView = UIView()
        fourthView.translatesAutoresizingMaskIntoConstraints=false
        fourthView.backgroundColor = UIColor(rgb: 0x7ED321)
        fourthView.layer.masksToBounds = false
        fourthView.layer.cornerRadius = 30
        return fourthView
    }()
    
    
    var smollImage: UIImageView = {
        let smollImage = UIImageView()
        smollImage.translatesAutoresizingMaskIntoConstraints=false
        smollImage.image = UIImage(named: "icon_image")
        return smollImage
    }()
    
    var penLabel: UILabel = {
        let penLabel = UILabel()
        penLabel.translatesAutoresizingMaskIntoConstraints=false
        penLabel.font = UIFont.systemFont(ofSize: 17)
        penLabel.textColor = .black
        penLabel.text = "Samsung Galaxy A32"
        return penLabel
    }()
    
    var plusLabel: UILabel = {
        let plusLabel = UILabel()
        plusLabel.translatesAutoresizingMaskIntoConstraints=false
        plusLabel.font = UIFont.systemFont(ofSize: 15)
        plusLabel.textColor = .black
        plusLabel.text = "Plus massenger 8.5.4.0"
        return plusLabel
    }()
    
    var messengeerLabel: UILabel = {
        let messengeerLabel = UILabel()
        messengeerLabel.translatesAutoresizingMaskIntoConstraints=false
        messengeerLabel.font = UIFont.systemFont(ofSize: 14)
        messengeerLabel.textColor = UIColor.systemGray
        messengeerLabel.text = "Tashkent, Uzbekistan • 23/02/22"
        return messengeerLabel
    }()
    
    var officialLabel: UILabel = {
        let officialLabel = UILabel()
        officialLabel.translatesAutoresizingMaskIntoConstraints=false
        officialLabel.font = UIFont.systemFont(ofSize: 13)
        officialLabel.textColor = UIColor.systemGray
        officialLabel.numberOfLines = 4
        officialLabel.text = "The official Telegram App is available for iPhone, iPad, Android, macOS, windows and Linux. Learn More"
        return officialLabel
    }()
    
    var automaticallyLabel: UILabel = {
        let automaticallyLabel = UILabel()
        automaticallyLabel.translatesAutoresizingMaskIntoConstraints=false
        automaticallyLabel.font = UIFont.systemFont(ofSize: 14)
        automaticallyLabel.textColor = UIColor.systemGray
        automaticallyLabel.text = "AUTOMATICLLY TERMINATE OLD SESSIONS"
        return automaticallyLabel
    }()
    
    var ifbtn: UIButton = {
        let ifbtn = UIButton()
        ifbtn.translatesAutoresizingMaskIntoConstraints=false
        ifbtn.backgroundColor = UIColor.white
        ifbtn.layer.masksToBounds = false
        ifbtn.layer.cornerRadius = 30
        return ifbtn
    }()
    
    var inactiveLabel: UILabel = {
        let inactiveLabel = UILabel()
        inactiveLabel.translatesAutoresizingMaskIntoConstraints=false
        inactiveLabel.font = UIFont.systemFont(ofSize: 18)
        inactiveLabel.textColor = .black
        inactiveLabel.text = "if inactive For"
        return inactiveLabel
    }()
    
    var monthLabel: UILabel = {
        let monthLabel = UILabel()
        monthLabel.translatesAutoresizingMaskIntoConstraints=false
        monthLabel.font = UIFont.systemFont(ofSize: 17)
        monthLabel.textColor = UIColor.systemGray
        monthLabel.text = "6 months"
        return monthLabel
    }()
    
    var rieghtImage: UIImageView = {
        let rieghtImage = UIImageView()
        rieghtImage.translatesAutoresizingMaskIntoConstraints=false
        rieghtImage.image = UIImage(named: "rieght_image")
        return rieghtImage
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
        
        homeview.addSubview(currentLabel)
        currentLabel.topAnchor.constraint(equalTo: deviceBtn.bottomAnchor,constant: 30).isActive=true
        currentLabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 20).isActive=true
        
        homeview.addSubview(sessionView)
        sessionView.topAnchor.constraint(equalTo: currentLabel.bottomAnchor,constant: 10).isActive=true
        sessionView.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        sessionView.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -10).isActive=true
        sessionView.heightAnchor.constraint(equalToConstant: 125).isActive=true
        sessionView.layer.cornerRadius = 10

        sessionView.addSubview(blueView)
        blueView.topAnchor.constraint(equalTo: sessionView.topAnchor,constant: 15).isActive=true
        blueView.leftAnchor.constraint(equalTo: sessionView.leftAnchor,constant: 15).isActive=true
        blueView.heightAnchor.constraint(equalToConstant: 33).isActive=true
        blueView.widthAnchor.constraint(equalToConstant: 30).isActive=true
        blueView.layer.cornerRadius = 8
        
        blueView.addSubview(smartphoneImage)
        smartphoneImage.topAnchor.constraint(equalTo: blueView.topAnchor,constant: 4).isActive=true
        smartphoneImage.leftAnchor.constraint(equalTo: blueView.leftAnchor,constant: 3).isActive=true
        
        sessionView.addSubview(iphoneLabel)
        iphoneLabel.topAnchor.constraint(equalTo: sessionView.topAnchor,constant: 13).isActive=true
        iphoneLabel.leftAnchor.constraint(equalTo: blueView.rightAnchor,constant: 15).isActive=true
        
        sessionView.addSubview(iosLabel)
        iosLabel.topAnchor.constraint(equalTo: iphoneLabel.bottomAnchor,constant: 2).isActive=true
        iosLabel.leftAnchor.constraint(equalTo: blueView.rightAnchor,constant: 15).isActive=true
        
        sessionView.addSubview(onlineLabel)
        onlineLabel.translatesAutoresizingMaskIntoConstraints=false
        onlineLabel.topAnchor.constraint(equalTo: iosLabel.bottomAnchor,constant: 2).isActive=true
        onlineLabel.leftAnchor.constraint(equalTo: blueView.rightAnchor,constant: 15).isActive=true
        
        sessionView.addSubview(lineView)
        lineView.topAnchor.constraint(equalTo: onlineLabel.bottomAnchor,constant: 3).isActive=true
        lineView.leftAnchor.constraint(equalTo: blueView.rightAnchor,constant: 15).isActive=true
        lineView.rightAnchor.constraint(equalTo: sessionView.rightAnchor).isActive=true
        lineView.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        sessionView.addSubview(handLabel)
        handLabel.topAnchor.constraint(equalTo: lineView.bottomAnchor,constant: 5).isActive=true
        handLabel.leftAnchor.constraint(equalTo: sessionView.leftAnchor,constant: 15).isActive=true
        
        sessionView.addSubview(terminateBtn)
        terminateBtn.topAnchor.constraint(equalTo: lineView.bottomAnchor,constant: 7).isActive=true
        terminateBtn.leftAnchor.constraint(equalTo: handLabel.rightAnchor,constant: 15).isActive=true
        
        homeview.addSubview(logsLabel)
        logsLabel.topAnchor.constraint(equalTo: sessionView.bottomAnchor,constant: 10).isActive=true
        logsLabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 20).isActive=true
        
        homeview.addSubview(activelabel)
        activelabel.topAnchor.constraint(equalTo: logsLabel.bottomAnchor,constant: 50).isActive=true
        activelabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 20).isActive=true
        
        homeview.addSubview(bigView)
        bigView.topAnchor.constraint(equalTo: activelabel.bottomAnchor,constant: 5).isActive=true
        bigView.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        bigView.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -10).isActive=true
        bigView.heightAnchor.constraint(equalToConstant: 310).isActive=true
        bigView.layer.cornerRadius = 10
        
        bigView.addSubview(firstView)
        firstView.topAnchor.constraint(equalTo: bigView.topAnchor,constant: 15).isActive=true
        firstView.leftAnchor.constraint(equalTo: bigView.leftAnchor,constant: 15).isActive=true
        firstView.heightAnchor.constraint(equalToConstant: 33).isActive=true
        firstView.widthAnchor.constraint(equalToConstant: 30).isActive=true
        firstView.layer.cornerRadius = 7
            
        firstView.addSubview(computerImage)
        computerImage.topAnchor.constraint(equalTo: firstView.topAnchor,constant: 4).isActive=true
        computerImage.leftAnchor.constraint(equalTo: firstView.leftAnchor,constant: 3).isActive=true
        
        bigView.addSubview(airLabel)
        airLabel.topAnchor.constraint(equalTo: bigView.topAnchor,constant: 12).isActive=true
        airLabel.leftAnchor.constraint(equalTo: firstView.rightAnchor,constant: 10).isActive=true
        
        bigView.addSubview(macosLabel)
        macosLabel.topAnchor.constraint(equalTo: airLabel.bottomAnchor,constant: 5).isActive=true
        macosLabel.leftAnchor.constraint(equalTo: firstView.rightAnchor,constant: 10).isActive=true
            
        bigView.addSubview(timeLabel)
        timeLabel.topAnchor.constraint(equalTo: macosLabel.bottomAnchor,constant: 4).isActive=true
        timeLabel.leftAnchor.constraint(equalTo: firstView.rightAnchor,constant: 10).isActive=true
        
        bigView.addSubview(lorgeView)
        lorgeView.topAnchor.constraint(equalTo: timeLabel.bottomAnchor,constant: 2).isActive=true
        lorgeView.leftAnchor.constraint(equalTo: firstView.rightAnchor,constant: 10).isActive=true
        lorgeView.rightAnchor.constraint(equalTo: bigView.rightAnchor).isActive=true
        lorgeView.heightAnchor.constraint(equalToConstant: 1).isActive=true
            
        bigView.addSubview(secondeView)
        secondeView.topAnchor.constraint(equalTo: lorgeView.bottomAnchor,constant: 10).isActive=true
        secondeView.leftAnchor.constraint(equalTo: bigView.leftAnchor,constant: 15).isActive=true
        secondeView.heightAnchor.constraint(equalToConstant: 33).isActive=true
        secondeView.widthAnchor.constraint(equalToConstant: 30).isActive=true
        secondeView.layer.cornerRadius = 7
            
        secondeView.addSubview(iconImage)
        iconImage.topAnchor.constraint(equalTo: secondeView.topAnchor,constant: 4).isActive=true
        iconImage.leftAnchor.constraint(equalTo: secondeView.leftAnchor,constant: 3).isActive=true
        
        bigView.addSubview(samsungLabel)
        samsungLabel.topAnchor.constraint(equalTo: lorgeView.bottomAnchor,constant: 7).isActive=true
        samsungLabel.leftAnchor.constraint(equalTo: secondeView.rightAnchor,constant: 10).isActive=true
        
        bigView.addSubview(androidLabel)
        androidLabel.topAnchor.constraint(equalTo: samsungLabel.bottomAnchor,constant: 2).isActive=true
        androidLabel.leftAnchor.constraint(equalTo: secondeView.rightAnchor,constant: 10).isActive=true
        
        bigView.addSubview(tashkentLabel)
        tashkentLabel.topAnchor.constraint(equalTo: androidLabel.bottomAnchor,constant: 2).isActive=true
        tashkentLabel.leftAnchor.constraint(equalTo: secondeView.rightAnchor,constant: 10).isActive=true
        
        bigView.addSubview(smileView)
        smileView.topAnchor.constraint(equalTo: tashkentLabel.bottomAnchor,constant: 3).isActive=true
        smileView.leftAnchor.constraint(equalTo: secondeView.rightAnchor,constant: 10).isActive=true
        smileView.rightAnchor.constraint(equalTo: bigView.rightAnchor).isActive=true
        smileView.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        bigView.addSubview(thirdView)
        thirdView.topAnchor.constraint(equalTo: smileView.bottomAnchor,constant: 10).isActive=true
        thirdView.leftAnchor.constraint(equalTo: bigView.leftAnchor,constant: 15).isActive=true
        thirdView.heightAnchor.constraint(equalToConstant: 33).isActive=true
        thirdView.widthAnchor.constraint(equalToConstant: 30).isActive=true
        thirdView.layer.cornerRadius = 7
        
        bigView.addSubview(iPhoneImage)
        iPhoneImage.topAnchor.constraint(equalTo: thirdView.topAnchor,constant: 4).isActive=true
        iPhoneImage.leftAnchor.constraint(equalTo: thirdView.leftAnchor,constant: 3).isActive=true
        
        bigView.addSubview(nextPhoneLabel)
        nextPhoneLabel.topAnchor.constraint(equalTo: smileView.topAnchor,constant: 11).isActive=true
        nextPhoneLabel.leftAnchor.constraint(equalTo: thirdView.rightAnchor,constant: 10).isActive=true
        
        bigView.addSubview(alertLabel)
        alertLabel.topAnchor.constraint(equalTo: nextPhoneLabel.bottomAnchor,constant: 2).isActive=true
        alertLabel.leftAnchor.constraint(equalTo: thirdView.rightAnchor,constant: 10).isActive=true
        
        bigView.addSubview(uzbekistanLabel)
        uzbekistanLabel.topAnchor.constraint(equalTo: alertLabel.bottomAnchor,constant: 2).isActive=true
        uzbekistanLabel.leftAnchor.constraint(equalTo: thirdView.rightAnchor,constant: 10).isActive=true
        
        bigView.addSubview(buetuflyView)
        buetuflyView.topAnchor.constraint(equalTo: uzbekistanLabel.bottomAnchor,constant: 3).isActive=true
        buetuflyView.leftAnchor.constraint(equalTo: thirdView.rightAnchor,constant: 10).isActive=true
        buetuflyView.rightAnchor.constraint(equalTo: bigView.rightAnchor).isActive=true
        buetuflyView.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        bigView.addSubview(fourthView)
        fourthView.topAnchor.constraint(equalTo: buetuflyView.bottomAnchor,constant: 10).isActive=true
        fourthView.leftAnchor.constraint(equalTo: bigView.leftAnchor,constant: 15).isActive=true
        fourthView.heightAnchor.constraint(equalToConstant: 33).isActive=true
        fourthView.widthAnchor.constraint(equalToConstant: 30).isActive=true
        fourthView.layer.cornerRadius = 7
            
        fourthView.addSubview(smollImage)
        smollImage.topAnchor.constraint(equalTo: fourthView.topAnchor,constant: 4).isActive=true
        smollImage.leftAnchor.constraint(equalTo: fourthView.leftAnchor,constant: 3).isActive=true
        
        
        bigView.addSubview(penLabel)
        penLabel.topAnchor.constraint(equalTo: buetuflyView.bottomAnchor,constant: 8).isActive=true
        penLabel.leftAnchor.constraint(equalTo: fourthView.rightAnchor,constant: 10).isActive=true
        
        bigView.addSubview(plusLabel)
        plusLabel.topAnchor.constraint(equalTo: penLabel.bottomAnchor,constant: 2).isActive=true
        plusLabel.leftAnchor.constraint(equalTo: fourthView.rightAnchor,constant: 10).isActive=true
        
        bigView.addSubview(messengeerLabel)
        messengeerLabel.topAnchor.constraint(equalTo: plusLabel.bottomAnchor,constant: 2).isActive=true
        messengeerLabel.leftAnchor.constraint(equalTo: fourthView.rightAnchor,constant: 10).isActive=true
        
        homeview.addSubview(officialLabel)
        officialLabel.topAnchor.constraint(equalTo: bigView.bottomAnchor,constant: 10).isActive=true
        officialLabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 20).isActive=true
        officialLabel.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -20).isActive=true
        
        homeview.addSubview(automaticallyLabel)
        automaticallyLabel.topAnchor.constraint(equalTo: officialLabel.bottomAnchor,constant: 20).isActive=true
        automaticallyLabel.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 15).isActive=true
        
        homeview.addSubview(ifbtn)
        ifbtn.topAnchor.constraint(equalTo: automaticallyLabel.bottomAnchor,constant: 10).isActive=true
        ifbtn.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        ifbtn.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -10).isActive=true
        ifbtn.heightAnchor.constraint(equalToConstant: 50).isActive=true
        ifbtn.layer.cornerRadius = 7
        
        ifbtn.addSubview(inactiveLabel)
        inactiveLabel.topAnchor.constraint(equalTo: ifbtn.topAnchor,constant: 13).isActive=true
        inactiveLabel.leftAnchor.constraint(equalTo: ifbtn.leftAnchor,constant: 10).isActive=true
        
        ifbtn.addSubview(rieghtImage)
        rieghtImage.topAnchor.constraint(equalTo: ifbtn.topAnchor,constant: 13).isActive=true
        rieghtImage.rightAnchor.constraint(equalTo: ifbtn.rightAnchor,constant: -10).isActive=true
        
        
        ifbtn.addSubview(monthLabel)
        monthLabel.topAnchor.constraint(equalTo: ifbtn.topAnchor,constant: 13).isActive=true
        monthLabel.rightAnchor.constraint(equalTo: rieghtImage.leftAnchor,constant: -10).isActive=true
        
        
        
        
        
        
    }


}

//
//  PrivacyViewController.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 08/04/22.
//

import UIKit

class PrivacyViewController: UIViewController {

    
    
    let scrollView: UIScrollView = {
        var scrollView = UIScrollView()
        let screensize: CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        let screenHeigth = screensize.height
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 10, width: screenWidth, height: 2000))
        scrollView.contentSize = CGSize(width: screenWidth, height: 2300)
        return scrollView
    }()
    
    var homeView: UIView = {
        let homeView = UIView()
        return homeView
    }()
    
    var customView: UIView = {
        let customeView = UIView()
        customeView.translatesAutoresizingMaskIntoConstraints=false
        customeView.backgroundColor = .white
        customeView.layer.cornerRadius = 30
        return customeView
    }()
    
    var blockView: UIView = {
        let blockView = UIView()
        blockView.translatesAutoresizingMaskIntoConstraints=false
        blockView.backgroundColor = .red
        blockView.layer.cornerRadius = 30
        return blockView
    }()
    
    var spamImage: UIImageView = {
        let spamImage = UIImageView()
        spamImage.translatesAutoresizingMaskIntoConstraints=false
        spamImage.image = UIImage(named: "spam_image")
        return spamImage
    }()
    
    var userLabel: UILabel = {
        let userLabel = UILabel()
        userLabel.translatesAutoresizingMaskIntoConstraints=false
        userLabel.font = UIFont.systemFont(ofSize: 20)
        userLabel.textColor = UIColor.black
        userLabel.text = "Blocked Users"
        return userLabel
    }()
    
    var rightImage: UIImageView = {
        let rightImage = UIImageView()
        rightImage.translatesAutoresizingMaskIntoConstraints=false
        rightImage.image = UIImage(named: "rieght_image")
        return rightImage
    }()
    
    var thirtyLabel: UILabel  = {
        let thirtyLabel = UILabel()
        thirtyLabel.translatesAutoresizingMaskIntoConstraints=false
        thirtyLabel.font = UIFont.systemFont(ofSize: 18)
        thirtyLabel.textColor = .systemGray
        thirtyLabel.text = "13"
        return thirtyLabel
    }()
    
    var idView: UIView = {
        let idView = UIView()
        idView.translatesAutoresizingMaskIntoConstraints=false
        idView.backgroundColor = .systemGray5
        return idView
    }()
    
    var greenView: UIView = {
        let greenView = UIView()
        greenView.translatesAutoresizingMaskIntoConstraints=false
        greenView.backgroundColor = .systemGreen
        greenView.layer.cornerRadius = 30
        return greenView
    }()
    
    var fingerprintImage: UIImageView = {
        let fingerprintImage = UIImageView()
        fingerprintImage.translatesAutoresizingMaskIntoConstraints=false
        fingerprintImage.image = UIImage(named: "fingerprint_image")
        return fingerprintImage
    }()
    
    var passcodeLabel: UILabel = {
        let passcodeLabel = UILabel()
        passcodeLabel.translatesAutoresizingMaskIntoConstraints=false
        passcodeLabel.font = UIFont.systemFont(ofSize: 20)
        passcodeLabel.textColor = .black
        passcodeLabel.text = "Passcode & Touch ID"
        return passcodeLabel
    }()
    
    var touchImage: UIImageView = {
        let touchImage = UIImageView()
        touchImage.translatesAutoresizingMaskIntoConstraints=false
        touchImage.image = UIImage(named:  "rieght_image")
        return touchImage
    }()
    
    var offLabel: UILabel = {
        let offLabel = UILabel()
        offLabel.translatesAutoresizingMaskIntoConstraints=false
        offLabel.font = UIFont.systemFont(ofSize: 18)
        offLabel.textColor = .systemGray
        offLabel.text = "Off"
        return offLabel
    }()
    
    var lineView: UIView = {
        let lineView = UIView()
        lineView.translatesAutoresizingMaskIntoConstraints=false
        lineView.backgroundColor = .systemGray5
        return lineView
    }()
    
    var twoView: UIView = {
        let twoView = UIView()
        twoView.translatesAutoresizingMaskIntoConstraints=false
        twoView.backgroundColor = UIColor(rgb: 0xF5831A)
        twoView.layer.cornerRadius = 30
        return twoView
    }()
    
    var keyImage: UIImageView = {
        let keyImage = UIImageView()
        keyImage.translatesAutoresizingMaskIntoConstraints=false
        keyImage.image = UIImage(named: "key_image")
        return keyImage
    }()
    
    var stepLabel: UILabel = {
        let stepLabel = UILabel()
        stepLabel.translatesAutoresizingMaskIntoConstraints=false
        stepLabel.font = UIFont.systemFont(ofSize: 20)
        stepLabel.textColor = .black
        stepLabel.text = "Two-Step Verification"
        return stepLabel
    }()
    
    var lastImage: UIImageView = {
        let latsImage = UIImageView()
        latsImage.translatesAutoresizingMaskIntoConstraints=false
        latsImage.image = UIImage(named: "rieght_image")
        return latsImage
    }()
    
    var nextLabel: UILabel = {
        let nextLabeb = UILabel()
        nextLabeb.translatesAutoresizingMaskIntoConstraints=false
        nextLabeb.font = UIFont.systemFont(ofSize: 18)
        nextLabeb.textColor = .systemGray
        nextLabeb.text = "Off"
        return nextLabeb
    }()
    
    var privacyLabel: UILabel = {
        let privacyLabel = UILabel()
        privacyLabel.translatesAutoresizingMaskIntoConstraints=false
        privacyLabel.font = UIFont.systemFont(ofSize: 16)
        privacyLabel.textColor = .systemGray
        privacyLabel.text = "PRIVACY"
        return privacyLabel
    }()
    
    var appView: UIView = {
        let appView = UIView()
        appView.translatesAutoresizingMaskIntoConstraints=false
        appView.backgroundColor = .white
        appView.layer.cornerRadius = 30
        return appView
    }()
    
    var phoneLabel: UILabel = {
        let phoneLabel = UILabel()
        phoneLabel.translatesAutoresizingMaskIntoConstraints=false
        phoneLabel.font = UIFont.systemFont(ofSize: 20)
        phoneLabel.textColor = .black
        phoneLabel.text = "Phone Number"
        return phoneLabel
    }()
    
    var myImage: UIImageView = {
        let myImage = UIImageView()
        myImage.translatesAutoresizingMaskIntoConstraints=false
        myImage.image = UIImage(named: "rieght_image")
        return myImage
    }()
    
    var contactLabel: UILabel = {
        let contactLabel = UILabel()
        contactLabel.translatesAutoresizingMaskIntoConstraints=false
        contactLabel.font = UIFont.systemFont(ofSize: 18)
        contactLabel.textColor = .systemGray
        contactLabel.text = "My Contacts"
        return contactLabel
    }()
    
    var numberView: UIView = {
        let numberView = UIView()
        numberView.translatesAutoresizingMaskIntoConstraints=false
        numberView.backgroundColor = .systemGray5
        return numberView
    }()
    
    var seenLabel: UILabel = {
        let seenLabel = UILabel()
        seenLabel.translatesAutoresizingMaskIntoConstraints=false
        seenLabel.font = UIFont.systemFont(ofSize: 20)
        seenLabel.textColor = .black
        seenLabel.text = "Last Seen & Online"
        return seenLabel
    }()
    
    var bodyImage: UIImageView = {
        let bodyImage = UIImageView()
        bodyImage.translatesAutoresizingMaskIntoConstraints=false
        bodyImage.image = UIImage(named: "rieght_image")
        return bodyImage
    }()
    
    var evryLabel: UILabel = {
        let evryLabel = UILabel()
        evryLabel.translatesAutoresizingMaskIntoConstraints=false
        evryLabel.font = UIFont.systemFont(ofSize: 18)
        evryLabel.textColor = .systemGray
        evryLabel.text = "Evrybody"
        return evryLabel
    }()
    
    var longView: UIView = {
        let longView = UIView()
        longView.translatesAutoresizingMaskIntoConstraints=false
        longView.backgroundColor = .systemGray5
        return longView
    }()
    
    var profileLabel: UILabel = {
        let profileLabel = UILabel()
        profileLabel.translatesAutoresizingMaskIntoConstraints=false
        profileLabel.font = UIFont.systemFont(ofSize: 20)
        profileLabel.textColor = .black
        profileLabel.text = "Profile Photo"
        return profileLabel
    }()
    
    var leftImage: UIImageView = {
        let leftImage = UIImageView()
        leftImage.translatesAutoresizingMaskIntoConstraints=false
        leftImage.image = UIImage(named: "rieght_image")
        return leftImage
    }()
    
    var nowLabel: UILabel = {
        let nowLabel = UILabel()
        nowLabel.translatesAutoresizingMaskIntoConstraints=false
        nowLabel.font = UIFont.systemFont(ofSize: 18)
        nowLabel.textColor = .systemGray
        nowLabel.text = "Everybody"
        return nowLabel
    }()
    
    var bigView: UIView = {
        let bigview = UIView()
        bigview.translatesAutoresizingMaskIntoConstraints=false
        bigview.backgroundColor = .systemGray5
        return bigview
    }()
    
    var callLabel: UILabel = {
        let callLabel = UILabel()
        callLabel.translatesAutoresizingMaskIntoConstraints=false
        callLabel.font = UIFont.systemFont(ofSize: 20)
        callLabel.textColor = .black
        callLabel.text = "Calls"
        return callLabel
    }()
    
    var mostImage: UIImageView = {
        let mostImage = UIImageView()
        mostImage.translatesAutoresizingMaskIntoConstraints=false
        mostImage.image = UIImage(named: "rieght_image")
        return mostImage
    }()
    
    var manLabel: UILabel = {
        let manLabel = UILabel()
        manLabel.translatesAutoresizingMaskIntoConstraints=false
        manLabel.font = UIFont.systemFont(ofSize: 18)
        manLabel.textColor = .systemGray
        manLabel.text = "Everybody"
        return manLabel
    }()
    
    var strongView: UIView = {
        let strongView = UIView()
        strongView.translatesAutoresizingMaskIntoConstraints=false
        strongView.backgroundColor = .systemGray5
        return strongView
    }()
    
    var forwardLabel: UILabel = {
        let forwardLabel = UILabel()
        forwardLabel.translatesAutoresizingMaskIntoConstraints=false
        forwardLabel.font = UIFont.systemFont(ofSize: 20)
        forwardLabel.textColor = .black
        forwardLabel.text = "Forwarded Messages"
        return forwardLabel
    }()
    
    var handImage: UIImageView = {
        let handImage = UIImageView()
        handImage.translatesAutoresizingMaskIntoConstraints=false
        handImage.image = UIImage(named: "rieght_image")
        return handImage
    }()
    
    var messageLabel: UILabel = {
        let messageLabel = UILabel()
        messageLabel.translatesAutoresizingMaskIntoConstraints=false
        messageLabel.font = UIFont.systemFont(ofSize: 18)
        messageLabel.textColor = .systemGray
        messageLabel.text = "Nobody"
        return messageLabel
    }()
    
    var coldView: UIView = {
        let coldView = UIView()
        coldView.translatesAutoresizingMaskIntoConstraints=false
        coldView.backgroundColor = .systemGray5
        return coldView
    }()
    
    var groupLabel: UILabel = {
        let groupLabel = UILabel()
        groupLabel.translatesAutoresizingMaskIntoConstraints=false
        groupLabel.font = UIFont.systemFont(ofSize: 20)
        groupLabel.textColor = .black
        groupLabel.text = "Groups & Channels"
        return groupLabel
    }()
    
    var badImage: UIImageView = {
        let badImage = UIImageView()
        badImage.translatesAutoresizingMaskIntoConstraints=false
        badImage.image = UIImage(named: "rieght_image")
        return badImage
    }()
    
    var channelLabel: UILabel = {
        let channnelLabel = UILabel()
        channnelLabel.translatesAutoresizingMaskIntoConstraints=false
        channnelLabel.font = UIFont.systemFont(ofSize: 18)
        channnelLabel.textColor = .systemGray
        channnelLabel.text = "My Contacts"
        return channnelLabel
    }()
    
    var changeLabel: UILabel = {
        let changeLabel = UILabel()
        changeLabel.translatesAutoresizingMaskIntoConstraints=false
        changeLabel.font = UIFont.systemFont(ofSize: 15)
        changeLabel.textColor = .systemGray
        changeLabel.text = "Change who can add you to groups and channels."
        return changeLabel
    }()
    
    var automaticLabel: UILabel = {
        let automaticLabel = UILabel()
        automaticLabel.translatesAutoresizingMaskIntoConstraints=false
        automaticLabel.font = UIFont.systemFont(ofSize: 15)
        automaticLabel.textColor = UIColor.systemGray
        automaticLabel.text = "AUTOMATICALLY DELETE MY ACCOUNT"
        return automaticLabel
    }()
    
    var forView: UIView = {
        let forView = UIView()
        forView.translatesAutoresizingMaskIntoConstraints=false
        forView.backgroundColor = .white
        forView.layer.cornerRadius = 30
        return forView
    }()
    
    var awayLabel: UILabel = {
        let awayLabel = UILabel()
        awayLabel.translatesAutoresizingMaskIntoConstraints=false
        awayLabel.font = UIFont.systemFont(ofSize: 20)
        awayLabel.textColor = .black
        awayLabel.text = "If Away For"
        return awayLabel
    }()
    
    var ifImage: UIImageView = {
        let ifImage = UIImageView()
        ifImage.translatesAutoresizingMaskIntoConstraints=false
        ifImage.image = UIImage(named: "rieght_image")
        return ifImage
    }()
    
    var monthLabel: UILabel = {
        let monthLabel = UILabel()
        monthLabel.translatesAutoresizingMaskIntoConstraints=false
        monthLabel.font = UIFont.systemFont(ofSize: 18)
        monthLabel.textColor = .systemGray
        monthLabel.text = "6 months"
        return monthLabel
    }()
    
    var comeLabel: UILabel = {
        let comeLabel = UILabel()
        comeLabel.translatesAutoresizingMaskIntoConstraints=false
        comeLabel.font = UIFont.systemFont(ofSize: 15)
        comeLabel.textColor = .systemGray
        comeLabel.numberOfLines = 5
        comeLabel.text = "if you do not come online at least once within this period, your account will be deleted along with all message and contacts."
        return comeLabel
    }()
    
    var tollView: UIView = {
        let tollView = UIView()
        tollView.translatesAutoresizingMaskIntoConstraints=false
        tollView.backgroundColor = .white
        tollView.layer.cornerRadius = 30
        return tollView
    }()
    
    var dataLabel: UILabel = {
        let dataLabel = UILabel()
        dataLabel.translatesAutoresizingMaskIntoConstraints=false
        dataLabel.font = UIFont.systemFont(ofSize: 20)
        dataLabel.textColor = .black
        dataLabel.text = "Data Settings"
        return dataLabel
    }()
    
    var settingImage: UIImageView = {
        let settingImage = UIImageView()
        settingImage.translatesAutoresizingMaskIntoConstraints=false
        settingImage.image = UIImage(named: "rieght_image")
        return settingImage
    }()
    
    var controlLabel: UILabel = {
        let controlLabel = UILabel()
        controlLabel.translatesAutoresizingMaskIntoConstraints=false
        controlLabel.font = UIFont.systemFont(ofSize: 15)
        controlLabel.textColor = .systemGray
        controlLabel.text = "control which of your data is stored in the cloud and used by Telegram to enable advanced features."
        return controlLabel
    }()
    

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        self.tabBarController?.tabBar.isHidden=true
        view.addSubview(scrollView)
        scrollView.addSubview(homeView)
        homeView.frame = scrollView.bounds
        title = "Privacy and Security"
        
        homeView.addSubview(customView)
        customView.topAnchor.constraint(equalTo: homeView.topAnchor,constant: 10).isActive=true
        customView.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        customView.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        customView.heightAnchor.constraint(equalToConstant: 140).isActive=true
        customView.layer.cornerRadius = 10
        
        customView.addSubview(blockView)
        blockView.topAnchor.constraint(equalTo: customView.topAnchor,constant: 10).isActive=true
        blockView.leftAnchor.constraint(equalTo: customView.leftAnchor,constant: 10).isActive=true
        blockView.heightAnchor.constraint(equalToConstant: 32).isActive=true
        blockView.widthAnchor.constraint(equalToConstant: 30).isActive=true
        blockView.layer.cornerRadius = 7
        
        blockView.addSubview(spamImage)
        spamImage.topAnchor.constraint(equalTo: blockView.topAnchor,constant: 4).isActive=true
        spamImage.leftAnchor.constraint(equalTo: blockView.leftAnchor,constant: 3).isActive=true
        
        customView.addSubview(userLabel)
        userLabel.topAnchor.constraint(equalTo: customView.topAnchor,constant: 12).isActive=true
        userLabel.leftAnchor.constraint(equalTo: blockView.rightAnchor,constant: 15).isActive=true
        
        customView.addSubview(rightImage)
        rightImage.topAnchor.constraint(equalTo: customView.topAnchor,constant: 12).isActive=true
        rightImage.rightAnchor.constraint(equalTo: customView.rightAnchor,constant: -10).isActive=true
        
        customView.addSubview(thirtyLabel)
        thirtyLabel.topAnchor.constraint(equalTo: customView.topAnchor,constant: 13).isActive=true
        thirtyLabel.rightAnchor.constraint(equalTo: rightImage.leftAnchor,constant: -5).isActive=true
        
        customView.addSubview(idView)
        idView.topAnchor.constraint(equalTo: blockView.bottomAnchor,constant: 5).isActive=true
        idView.leftAnchor.constraint(equalTo: blockView.rightAnchor,constant: 15).isActive=true
        idView.rightAnchor.constraint(equalTo: customView.rightAnchor).isActive=true
        idView.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        customView.addSubview(greenView)
        greenView.topAnchor.constraint(equalTo: idView.bottomAnchor,constant: 5).isActive=true
        greenView.leftAnchor.constraint(equalTo: customView.leftAnchor,constant: 10).isActive=true
        greenView.heightAnchor.constraint(equalToConstant: 32).isActive=true
        greenView.widthAnchor.constraint(equalToConstant: 30).isActive=true
        greenView.layer.cornerRadius = 7
        
        greenView.addSubview(fingerprintImage)
        fingerprintImage.topAnchor.constraint(equalTo: greenView.topAnchor,constant: 4).isActive=true
        fingerprintImage.leftAnchor.constraint(equalTo: greenView.leftAnchor,constant: 3).isActive=true
        
        customView.addSubview(passcodeLabel)
        passcodeLabel.topAnchor.constraint(equalTo: idView.bottomAnchor,constant: 8).isActive=true
        passcodeLabel.leftAnchor.constraint(equalTo: greenView.rightAnchor,constant: 15).isActive=true

        customView.addSubview(touchImage)
        touchImage.topAnchor.constraint(equalTo: idView.bottomAnchor,constant: 8).isActive=true
        touchImage.rightAnchor.constraint(equalTo: customView.rightAnchor,constant: -10).isActive=true
        
        customView.addSubview(offLabel)
        offLabel.topAnchor.constraint(equalTo: idView.bottomAnchor,constant: 8).isActive=true
        offLabel.rightAnchor.constraint(equalTo: touchImage.leftAnchor,constant: -5).isActive=true
        
        customView.addSubview(lineView)
        lineView.topAnchor.constraint(equalTo: greenView.bottomAnchor,constant: 5).isActive=true
        lineView.leftAnchor.constraint(equalTo: greenView.rightAnchor,constant: 15).isActive=true
        lineView .rightAnchor.constraint(equalTo: customView.rightAnchor).isActive=true
        lineView.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        customView.addSubview(twoView)
        twoView.topAnchor.constraint(equalTo: lineView.bottomAnchor,constant: 5).isActive=true
        twoView.leftAnchor.constraint(equalTo: customView.leftAnchor,constant: 10).isActive=true
        twoView.heightAnchor.constraint(equalToConstant: 32).isActive=true
        twoView.widthAnchor.constraint(equalToConstant: 30).isActive=true
        twoView.layer.cornerRadius = 7
        
        twoView.addSubview(keyImage)
        keyImage.topAnchor.constraint(equalTo: twoView.topAnchor,constant: 3).isActive=true
        keyImage.leftAnchor.constraint(equalTo: twoView.leftAnchor,constant: 2.5).isActive=true
        keyImage.heightAnchor.constraint(equalToConstant: 25).isActive=true
        keyImage.widthAnchor.constraint(equalToConstant: 25).isActive=true
        
        customView.addSubview(stepLabel)
        stepLabel.topAnchor.constraint(equalTo: lineView.bottomAnchor,constant: 8).isActive=true
        stepLabel.leftAnchor.constraint(equalTo: twoView.rightAnchor,constant: 15).isActive=true

        customView.addSubview(lastImage)
        lastImage.topAnchor.constraint(equalTo: lineView.bottomAnchor,constant: 8).isActive=true
        lastImage.rightAnchor.constraint(equalTo: lineView.rightAnchor,constant: -10).isActive=true
        
        customView.addSubview(nextLabel)
        nextLabel.topAnchor.constraint(equalTo: lineView.bottomAnchor,constant: 8).isActive=true
        nextLabel.rightAnchor.constraint(equalTo: lastImage.leftAnchor,constant: -5).isActive=true
        
        homeView.addSubview(privacyLabel)
        privacyLabel.topAnchor.constraint(equalTo: customView.bottomAnchor,constant: 30).isActive=true
        privacyLabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 20).isActive=true
        
        homeView.addSubview(appView)
        appView.topAnchor.constraint(equalTo: privacyLabel.bottomAnchor,constant: 5).isActive=true
        appView.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        appView.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        appView.heightAnchor.constraint(equalToConstant: 255).isActive=true
        appView.layer.cornerRadius = 10
        
        appView.addSubview(phoneLabel)
        phoneLabel.topAnchor.constraint(equalTo: appView.topAnchor,constant: 10).isActive=true
        phoneLabel.leftAnchor.constraint(equalTo: appView.leftAnchor,constant: 15).isActive=true
        
        appView.addSubview(myImage)
        myImage.topAnchor.constraint(equalTo: appView.topAnchor,constant: 10).isActive=true
        myImage.rightAnchor.constraint(equalTo: appView.rightAnchor,constant: -10).isActive=true
        
        appView.addSubview(contactLabel)
        contactLabel.topAnchor.constraint(equalTo: appView.topAnchor,constant: 10).isActive=true
        contactLabel.rightAnchor.constraint(equalTo: myImage.leftAnchor,constant: -5).isActive=true
        
        appView.addSubview(numberView)
        numberView.topAnchor.constraint(equalTo: phoneLabel.bottomAnchor,constant: 10).isActive=true
        numberView.leftAnchor.constraint(equalTo: appView.leftAnchor,constant: 15).isActive=true
        numberView.rightAnchor.constraint(equalTo: appView.rightAnchor).isActive=true
        numberView.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        appView.addSubview(seenLabel)
        seenLabel.topAnchor.constraint(equalTo: numberView.bottomAnchor,constant: 7).isActive=true
        seenLabel.leftAnchor.constraint(equalTo: appView.leftAnchor,constant: 15).isActive=true

        appView.addSubview(bodyImage)
        bodyImage.topAnchor.constraint(equalTo: numberView.bottomAnchor,constant: 7).isActive=true
        bodyImage.rightAnchor.constraint(equalTo: appView.rightAnchor,constant: -10).isActive=true
    
        appView.addSubview(evryLabel)
        evryLabel.topAnchor.constraint(equalTo: numberView.bottomAnchor,constant: 7).isActive=true
        evryLabel.rightAnchor.constraint(equalTo: bodyImage.leftAnchor,constant: -5).isActive=true
        
        appView.addSubview(longView)
        longView.topAnchor.constraint(equalTo: seenLabel.bottomAnchor,constant: 10).isActive=true
        longView.leftAnchor.constraint(equalTo: appView.leftAnchor,constant: 15).isActive=true
        longView.rightAnchor.constraint(equalTo: appView.rightAnchor).isActive=true
        longView.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        appView.addSubview(profileLabel)
        profileLabel.topAnchor.constraint(equalTo: longView.bottomAnchor,constant: 7).isActive=true
        profileLabel.leftAnchor.constraint(equalTo: appView.leftAnchor,constant: 15).isActive=true
        
        appView.addSubview(leftImage)
        leftImage.topAnchor.constraint(equalTo: longView.bottomAnchor,constant: 7).isActive=true
        leftImage.rightAnchor.constraint(equalTo: appView.rightAnchor,constant: -10).isActive=true
        
        appView.addSubview(nowLabel)
        nowLabel.topAnchor.constraint(equalTo: longView.bottomAnchor,constant: 7).isActive=true
        nowLabel.rightAnchor.constraint(equalTo: leftImage.leftAnchor,constant: -5).isActive=true
        
        appView.addSubview(bigView)
        bigView.topAnchor.constraint(equalTo: profileLabel.bottomAnchor,constant: 10).isActive=true
        bigView.leftAnchor.constraint(equalTo: appView.leftAnchor,constant: 15).isActive=true
        bigView.rightAnchor.constraint(equalTo: appView.rightAnchor).isActive=true
        bigView.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        appView.addSubview(callLabel)
        callLabel.topAnchor.constraint(equalTo: bigView.bottomAnchor,constant: 7).isActive=true
        callLabel.leftAnchor.constraint(equalTo: appView.leftAnchor,constant: 15).isActive=true
        
        appView.addSubview(mostImage)
        mostImage.topAnchor.constraint(equalTo: bigView.bottomAnchor,constant: 7).isActive=true
        mostImage.rightAnchor.constraint(equalTo: appView.rightAnchor,constant: -10).isActive=true
    
        appView.addSubview(manLabel)
        manLabel.topAnchor.constraint(equalTo: bigView.bottomAnchor,constant: 7).isActive=true
        manLabel.rightAnchor.constraint(equalTo: mostImage.leftAnchor,constant: -5).isActive=true
        
        appView.addSubview(strongView)
        strongView.topAnchor.constraint(equalTo: callLabel.bottomAnchor,constant: 10).isActive=true
        strongView.leftAnchor.constraint(equalTo: appView.leftAnchor,constant: 15).isActive=true
        strongView.rightAnchor.constraint(equalTo: appView.rightAnchor).isActive=true
        strongView.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        appView.addSubview(forwardLabel)
        forwardLabel.topAnchor.constraint(equalTo: strongView.bottomAnchor,constant: 7).isActive=true
        forwardLabel.leftAnchor.constraint(equalTo: appView.leftAnchor,constant: 15).isActive=true
        
        appView.addSubview(handImage)
        handImage.topAnchor.constraint(equalTo: strongView.bottomAnchor,constant: 7).isActive=true
        handImage.rightAnchor.constraint(equalTo: appView.rightAnchor,constant: -10).isActive=true
        
        appView.addSubview(messageLabel)
        messageLabel.topAnchor.constraint(equalTo: strongView.bottomAnchor,constant: 7).isActive=true
        messageLabel.rightAnchor.constraint(equalTo: handImage.leftAnchor,constant: -5).isActive=true
        
        appView.addSubview(coldView)
        coldView.topAnchor.constraint(equalTo: forwardLabel.bottomAnchor,constant: 10).isActive=true
        coldView.leftAnchor.constraint(equalTo: appView.leftAnchor,constant: 15).isActive=true
        coldView.rightAnchor.constraint(equalTo: appView.rightAnchor).isActive=true
        coldView.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        appView.addSubview(groupLabel)
        groupLabel.topAnchor.constraint(equalTo: coldView.bottomAnchor,constant: 7).isActive=true
        groupLabel.leftAnchor.constraint(equalTo: appView.leftAnchor,constant: 15).isActive=true
        
        appView.addSubview(badImage)
        badImage.topAnchor.constraint(equalTo: coldView.bottomAnchor,constant: 7).isActive=true
        badImage.rightAnchor.constraint(equalTo: appView.rightAnchor,constant: -10).isActive=true
        
        appView.addSubview(channelLabel)
        channelLabel.topAnchor.constraint(equalTo: coldView.bottomAnchor,constant: 7).isActive=true
        channelLabel.rightAnchor.constraint(equalTo: badImage.leftAnchor,constant: -5).isActive=true
        
        homeView.addSubview(changeLabel)
        changeLabel.topAnchor.constraint(equalTo: appView.bottomAnchor,constant: 10).isActive=true
        changeLabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 15).isActive=true
        changeLabel.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -15).isActive=true
        
        homeView.addSubview(automaticLabel)
        automaticLabel.topAnchor.constraint(equalTo: changeLabel.bottomAnchor,constant: 30).isActive=true
        automaticLabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 15).isActive=true
        automaticLabel.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -15).isActive=true
        
        homeView.addSubview(forView)
        forView.topAnchor.constraint(equalTo: automaticLabel.bottomAnchor,constant: 10).isActive=true
        forView.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        forView.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        forView.heightAnchor.constraint(equalToConstant: 50).isActive=true
        forView.layer.cornerRadius = 7
        
        forView.addSubview(awayLabel)
        awayLabel.topAnchor.constraint(equalTo: forView.topAnchor,constant: 12).isActive=true
        awayLabel.leftAnchor.constraint(equalTo: forView.leftAnchor,constant: 15).isActive=true
        
        forView.addSubview(ifImage)
        ifImage.topAnchor.constraint(equalTo: forView.topAnchor,constant: 12).isActive=true
        ifImage.rightAnchor.constraint(equalTo: forView.rightAnchor,constant: -10).isActive=true
        
        forView.addSubview(monthLabel)
        monthLabel.topAnchor.constraint(equalTo: forView.topAnchor,constant: 12).isActive=true
        monthLabel.rightAnchor.constraint(equalTo: ifImage.leftAnchor,constant: -5).isActive=true
        
        homeView.addSubview(comeLabel)
        comeLabel.topAnchor.constraint(equalTo: forView.bottomAnchor,constant: 10).isActive=true
        comeLabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 15).isActive=true
        comeLabel.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -15).isActive=true
        
        homeView.addSubview(tollView)
        tollView.topAnchor.constraint(equalTo: comeLabel.bottomAnchor,constant: 25).isActive=true
        tollView.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        tollView.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        tollView.heightAnchor.constraint(equalToConstant: 50).isActive=true
        tollView.layer.cornerRadius = 7
        
        tollView.addSubview(dataLabel)
        dataLabel.topAnchor.constraint(equalTo: tollView.topAnchor,constant: 12).isActive=true
        dataLabel.leftAnchor.constraint(equalTo: tollView.leftAnchor,constant: 15).isActive=true
        
        tollView.addSubview(settingImage)
        settingImage.topAnchor.constraint(equalTo: tollView.topAnchor,constant: 12).isActive=true
        settingImage.rightAnchor.constraint(equalTo: tollView.rightAnchor,constant: -10).isActive=true
        
        homeView.addSubview(controlLabel)
        controlLabel.topAnchor.constraint(equalTo: tollView.bottomAnchor,constant: 10).isActive=true
        controlLabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 15).isActive=true
        controlLabel.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -15).isActive=true
        controlLabel.numberOfLines = 3
        
       
    }
    

  

}

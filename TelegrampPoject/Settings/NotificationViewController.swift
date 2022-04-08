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
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 10, width: screenWidth, height: 2000))
        scrollView.contentSize = CGSize(width: screenWidth, height: 2500)
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
    
    var greenView: UIView = {
        let greenView = UIView()
        greenView.translatesAutoresizingMaskIntoConstraints=false
        greenView.backgroundColor = .systemGreen
        greenView.layer.cornerRadius = 30
        return greenView
    }()
    
    var teamImage: UIImageView = {
        let teamImage = UIImageView()
        teamImage.translatesAutoresizingMaskIntoConstraints=false
        teamImage.image = UIImage(named: "team_image")
        return teamImage
    }()
    
    var groupLabel: UILabel = {
        let groupLabel = UILabel()
        groupLabel.translatesAutoresizingMaskIntoConstraints=false
        groupLabel.font = UIFont.systemFont(ofSize: 20)
        groupLabel.textColor = .black
        groupLabel.text = "Goup Chats"
        return groupLabel
    }()
    
    var exceptionLabel: UILabel = {
        let exceptionLabel = UILabel()
        exceptionLabel.translatesAutoresizingMaskIntoConstraints=false
        exceptionLabel.font = UIFont.systemFont(ofSize: 16)
        exceptionLabel.textColor = .systemGray
        exceptionLabel.text = "3 exceptions"
        return exceptionLabel
    }()
    
    var bookImage:UIImageView = {
        let bookImage = UIImageView()
        bookImage.translatesAutoresizingMaskIntoConstraints=false
        bookImage.image = UIImage(named: "rieght_image")
        return bookImage
    }()
    
    var openLabel: UILabel = {
        let openLabel = UILabel()
        openLabel.translatesAutoresizingMaskIntoConstraints=false
        openLabel.font = UIFont.systemFont(ofSize: 18)
        openLabel.textColor = .systemGray
        openLabel.text = "On"
        return openLabel
    }()
    
    var longView: UIView = {
        let longView = UIView()
        longView.translatesAutoresizingMaskIntoConstraints=false
        longView.backgroundColor = .systemGray5
        return longView
    }()
    
    var lastView: UIView = {
        let lastView = UIView()
        lastView.translatesAutoresizingMaskIntoConstraints=false
        lastView.backgroundColor = UIColor(rgb: 0xF5831A)
        lastView.layer.cornerRadius = 30
        return lastView
    }()
    
    var iconImage: UIImageView = {
        let iconImage = UIImageView()
        iconImage.translatesAutoresizingMaskIntoConstraints=false
        iconImage.image = UIImage(named: "icons_image")
        return iconImage
    }()
    
    var chanelLabel: UILabel = {
        let chanelLabel = UILabel()
        chanelLabel.translatesAutoresizingMaskIntoConstraints=false
        chanelLabel.font = UIFont.systemFont(ofSize: 20)
        chanelLabel.textColor = .black
        chanelLabel.text = "Channels"
        return chanelLabel
    }()
    
    var thiryLabel: UILabel = {
        let thiryLabel = UILabel()
        thiryLabel.translatesAutoresizingMaskIntoConstraints=false
        thiryLabel.font = UIFont.systemFont(ofSize: 16)
        thiryLabel.textColor = .systemGray
        thiryLabel.text = "3 exceptions"
        return thiryLabel
    }()
    
    var artImage: UIImageView = {
        let artImage = UIImageView()
        artImage.translatesAutoresizingMaskIntoConstraints=false
        artImage.image = UIImage(named: "rieght_image")
        return artImage
    }()
    
    var foxLabel: UILabel = {
        let foxLabel = UILabel()
        foxLabel.translatesAutoresizingMaskIntoConstraints=false
        foxLabel.font = UIFont.systemFont(ofSize: 20)
        foxLabel.textColor = .systemGray
        foxLabel.text = "On"
        return foxLabel
    }()
    
    var inLabel: UILabel = {
        let inLabel = UILabel()
        inLabel.translatesAutoresizingMaskIntoConstraints=false
        inLabel.font = UIFont.systemFont(ofSize: 16)
        inLabel.textColor = .systemGray
        inLabel.text = "IN-APP NOTIFICATIONS"
        return inLabel
    }()
    
    var appView: UIView = {
        let appView = UIView()
        appView.translatesAutoresizingMaskIntoConstraints=false
        appView.backgroundColor = .white
        appView.layer.cornerRadius = 30
        return appView
    }()
    
    var soundLabel: UILabel = {
        let soundLabel = UILabel()
        soundLabel.translatesAutoresizingMaskIntoConstraints=false
        soundLabel.font = UIFont.systemFont(ofSize: 20)
        soundLabel.textColor = .black
        soundLabel.text = "In-App Sounds"
        return soundLabel
    }()
    
    var mySwitch: UISwitch = {
        let mySwitch = UISwitch()
        mySwitch.translatesAutoresizingMaskIntoConstraints=false
        mySwitch.tintColor = .systemGreen
        mySwitch.isOn = true
        return mySwitch
    }()
    
    var bigView: UIView = {
        let bigView = UIView()
        bigView.translatesAutoresizingMaskIntoConstraints=false
        bigView.backgroundColor = .systemGray5
        return bigView
    }()
    
    var vibrateLabel: UILabel = {
        let vibrateLabel = UILabel()
        vibrateLabel.translatesAutoresizingMaskIntoConstraints=false
        vibrateLabel.font = UIFont.systemFont(ofSize: 20)
        vibrateLabel.textColor = .black
        vibrateLabel.text = "In-App Vibrate"
        return vibrateLabel
    }()
    
    var phoneSwitch: UISwitch = {
        let phoneSwitch = UISwitch()
        phoneSwitch.translatesAutoresizingMaskIntoConstraints=false
        phoneSwitch.tintColor = .systemGreen
        
        return phoneSwitch
    }()
    
    var maxView: UIView = {
        let maxView = UIView()
        maxView.translatesAutoresizingMaskIntoConstraints=false
        maxView.backgroundColor = .systemGray5
        return maxView
    }()
    
    var previewLabel: UILabel = {
        let previewLabel = UILabel()
        previewLabel.translatesAutoresizingMaskIntoConstraints=false
        previewLabel.font = UIFont.systemFont(ofSize: 20)
        previewLabel.textColor = .black
        previewLabel.text = "In-App Preview"
        return previewLabel
    }()
    
    var macSwitch: UISwitch = {
        let macSwitch = UISwitch()
        macSwitch.translatesAutoresizingMaskIntoConstraints=false
        macSwitch.tintColor = .systemGreen
        macSwitch.isOn = true
        return macSwitch
    }()
    
    var lockView: UIView = {
        let lockView = UIView()
        lockView.translatesAutoresizingMaskIntoConstraints=false
        lockView.backgroundColor = .white
        lockView.layer.cornerRadius = 30
        return lockView
    }()
    
    var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints=false
        nameLabel.font = UIFont.systemFont(ofSize: 20)
        nameLabel.textColor = .black
        nameLabel.text = "Name on Lock Screen"
        return nameLabel
    }()
    
    var screenSwitch: UISwitch = {
        let screenSwitch = UISwitch()
        screenSwitch.translatesAutoresizingMaskIntoConstraints=false
        screenSwitch.tintColor = .systemGreen
        screenSwitch.isOn = true
        return screenSwitch
    }()
    
    var displayLabel: UILabel = {
        let displayLabel = UILabel()
        displayLabel.translatesAutoresizingMaskIntoConstraints=false
        displayLabel.font = UIFont.systemFont(ofSize: 15)
        displayLabel.textColor = .systemGray
        displayLabel.text = "Display names in notification when the device is locked. To display, make sure that 'Shov Previews' is also set to 'When Unlocked' or 'Never' in iOS Settings > Notifications."
        displayLabel.numberOfLines = 5
        return displayLabel
    }()
    
    var badgeLabel: UILabel = {
        let badgeLabel = UILabel()
        badgeLabel.translatesAutoresizingMaskIntoConstraints=false
        badgeLabel.font = UIFont.systemFont(ofSize: 18)
        badgeLabel.textColor = .systemGray
        badgeLabel.text = "BADGE COUNTER"
        return badgeLabel
    }()
    
    var alertView: UIView = {
        let alertView = UIView ()
        alertView.translatesAutoresizingMaskIntoConstraints=false
        alertView.backgroundColor = .white
        alertView.layer.cornerRadius = 30
        return alertView
    }()
    
    var includeLabel: UILabel = {
        let includeLabel = UILabel()
        includeLabel.translatesAutoresizingMaskIntoConstraints=false
        includeLabel.font = UIFont.systemFont(ofSize: 20)
        includeLabel.textColor = .black
        includeLabel.text = "Include Channels"
        return includeLabel
    }()
    
    var channelSwitch: UISwitch = {
        let channelSwitch = UISwitch()
        channelSwitch.translatesAutoresizingMaskIntoConstraints=false
        channelSwitch.tintColor = .systemGreen
        channelSwitch.isOn = true
        return channelSwitch
    }()
    
    var unreadView: UIView = {
        let unreadView = UIView()
        unreadView.translatesAutoresizingMaskIntoConstraints=false
        unreadView.backgroundColor = .systemGray5
        return unreadView
    }()
    
    var countLabel: UILabel = {
        let countLabel = UILabel()
        countLabel.translatesAutoresizingMaskIntoConstraints=false
        countLabel.font = UIFont.systemFont(ofSize: 20)
        countLabel.textColor = .black
        countLabel.text = "Count Unread Messages"
        return countLabel
    }()
    
    var workSwitch: UISwitch = {
        let workSwitch = UISwitch()
        workSwitch.translatesAutoresizingMaskIntoConstraints=false
        workSwitch.tintColor = .systemGreen
        workSwitch.isOn = true
        return workSwitch
    }()
    
    var numberLabel: UILabel = {
        let numberLabel = UILabel()
        numberLabel.translatesAutoresizingMaskIntoConstraints=false
        numberLabel.font = UIFont.systemFont(ofSize: 15)
        numberLabel.textColor = .systemGray
        numberLabel.numberOfLines = 3
        numberLabel.text = "Switch off to show the number of unread chats instead of messages."
        return numberLabel
    }()
    
    var tollView: UIView = {
        let tollView = UIView()
        tollView.translatesAutoresizingMaskIntoConstraints=false
        tollView.backgroundColor = .white
        tollView.layer.cornerRadius = 30
        return tollView
    }()
    
    var newLabel: UILabel = {
        let newLabel = UILabel()
        newLabel.translatesAutoresizingMaskIntoConstraints=false
        newLabel.font = UIFont.systemFont(ofSize: 20)
        newLabel.textColor = .black
        newLabel.text = "New Contacts"
        return newLabel
    }()
    
    var nextSwitch: UISwitch = {
        let nextSwitch = UISwitch()
        nextSwitch.translatesAutoresizingMaskIntoConstraints=false
        nextSwitch.tintColor = .systemGreen
        nextSwitch.isOn = true
        return nextSwitch
    }()
    
    var reviceLabel: UILabel = {
        let reviceLabel = UILabel()
        reviceLabel.translatesAutoresizingMaskIntoConstraints=false
        reviceLabel.font = UIFont.systemFont(ofSize: 15)
        reviceLabel.textColor = .systemGray
        reviceLabel.text = "Revice push notification when one of your contacts becomes available on telegram."
        return reviceLabel
    }()
    
    var resetView: UIView = {
        let resetView = UIView()
        resetView.translatesAutoresizingMaskIntoConstraints=false
        resetView.backgroundColor = .white
        resetView.layer.cornerRadius = 30
        return resetView
    }()
    
    var allLabel: UILabel = {
        let allLAbel = UILabel()
        allLAbel.translatesAutoresizingMaskIntoConstraints=false
        allLAbel.font = UIFont.systemFont(ofSize: 20)
        allLAbel.textColor = .red
        allLAbel.text = "Reset All Notifications"
        return allLAbel
    }()
    
    var undoLabel: UILabel = {
        let undoLabel = UILabel()
        undoLabel.translatesAutoresizingMaskIntoConstraints=false
        undoLabel.font = UIFont.systemFont(ofSize: 15)
        undoLabel.textColor = .systemGray
        undoLabel.text = "Undo all custom notification settings for all your contacts, groups and channels."
        return undoLabel
    }()
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        self.tabBarController?.tabBar.isHidden=true
        view.addSubview(scrollView)
        scrollView.addSubview(homeView)
        homeView.frame=scrollView.bounds
        title = "Notifications"
        
        setingAnchors()

        
    }
    


}

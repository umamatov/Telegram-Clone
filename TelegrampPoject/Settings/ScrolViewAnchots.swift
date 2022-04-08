//
//  ScrolView.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 08/04/22.
//

import Foundation
extension NotificationViewController{
    func setingAnchors(){
        
        homeView.addSubview(messageLabel)
        messageLabel.topAnchor.constraint(equalTo: homeView.topAnchor,constant: 20).isActive=true
        messageLabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 20).isActive=true
        messageLabel.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -20).isActive=true


        //First view
        homeView.addSubview(firstView)
        firstView.topAnchor.constraint(equalTo: messageLabel.bottomAnchor,constant: 10).isActive=true
        firstView.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        firstView.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        firstView.heightAnchor.constraint(equalToConstant: 165).isActive=true
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

        firstView.addSubview(greenView)
        greenView.topAnchor.constraint(equalTo: lineView.bottomAnchor,constant: 10).isActive=true
        greenView.leftAnchor.constraint(equalTo: firstView.leftAnchor,constant: 10).isActive=true
        greenView.heightAnchor.constraint(equalToConstant: 32).isActive=true
        greenView.widthAnchor.constraint(equalToConstant: 30).isActive=true
        greenView.layer.cornerRadius = 5

        greenView.addSubview(teamImage)
        teamImage.topAnchor.constraint(equalTo: greenView.topAnchor,constant: 3).isActive=true
        teamImage.leftAnchor.constraint(equalTo: greenView.leftAnchor,constant: 3).isActive=true

        firstView.addSubview(groupLabel)
        groupLabel.topAnchor.constraint(equalTo: lineView.bottomAnchor,constant: 5).isActive=true
        groupLabel.leftAnchor.constraint(equalTo: greenView.rightAnchor,constant: 10).isActive=true

        firstView.addSubview(exceptionLabel)
        exceptionLabel.topAnchor.constraint(equalTo: groupLabel.bottomAnchor,constant: 1).isActive=true
        exceptionLabel.leftAnchor.constraint(equalTo: greenView.rightAnchor,constant: 10).isActive=true

        firstView.addSubview(bookImage)
        bookImage.topAnchor.constraint(equalTo: lineView.bottomAnchor,constant: 15).isActive=true
        bookImage.rightAnchor.constraint(equalTo: firstView.rightAnchor,constant: -10).isActive=true

        firstView.addSubview(openLabel)
        openLabel.topAnchor.constraint(equalTo: lineView.bottomAnchor,constant: 15).isActive=true
        openLabel.rightAnchor.constraint(equalTo: bookImage.leftAnchor,constant: -7).isActive=true

        firstView.addSubview(longView)
        longView.topAnchor.constraint(equalTo: exceptionLabel.bottomAnchor,constant: 5).isActive=true
        longView.leftAnchor.constraint(equalTo: greenView.rightAnchor,constant: 10).isActive=true
        longView.rightAnchor.constraint(equalTo: firstView.rightAnchor).isActive=true
        longView.heightAnchor.constraint(equalToConstant: 1).isActive=true

        firstView.addSubview(lastView)
        lastView.topAnchor.constraint(equalTo: longView.bottomAnchor,constant: 10).isActive=true
        lastView.leftAnchor.constraint(equalTo: firstView.leftAnchor,constant: 10).isActive=true
        lastView.heightAnchor.constraint(equalToConstant: 32).isActive=true
        lastView.widthAnchor.constraint(equalToConstant: 30).isActive=true
        lastView.layer.cornerRadius = 5

        lastView.addSubview(iconImage)
        iconImage.topAnchor.constraint(equalTo: lastView.topAnchor,constant: 0).isActive=true
        iconImage.leftAnchor.constraint(equalTo: lastView.leftAnchor,constant: 0).isActive=true
        iconImage.heightAnchor.constraint(equalToConstant: 30).isActive=true
        iconImage.widthAnchor.constraint(equalToConstant: 30).isActive=true

        firstView.addSubview(chanelLabel)
        chanelLabel.topAnchor.constraint(equalTo: longView.bottomAnchor,constant: 5).isActive=true
        chanelLabel.leftAnchor.constraint(equalTo: lastView.rightAnchor,constant: 10).isActive=true

        firstView.addSubview(thiryLabel)
        thiryLabel.topAnchor.constraint(equalTo: chanelLabel.bottomAnchor,constant: 1).isActive=true
        thiryLabel.leftAnchor.constraint(equalTo: lastView.rightAnchor,constant: 10).isActive=true

        firstView.addSubview(artImage)
        artImage.topAnchor.constraint(equalTo: longView.bottomAnchor,constant: 15).isActive=true
        artImage.rightAnchor.constraint(equalTo: firstView.rightAnchor,constant: -10).isActive=true

        firstView.addSubview(foxLabel)
        foxLabel.topAnchor.constraint(equalTo: longView.bottomAnchor,constant: 15).isActive=true
        foxLabel.rightAnchor.constraint(equalTo: artImage.leftAnchor,constant: -5).isActive=true


        //In App Notification
        homeView.addSubview(inLabel)
        inLabel.topAnchor.constraint(equalTo: firstView.bottomAnchor,constant: 30).isActive=true
        inLabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 20).isActive=true
        inLabel.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -20).isActive=true

        homeView.addSubview(appView)
        appView.topAnchor.constraint(equalTo: inLabel.bottomAnchor,constant: 10).isActive=true
        appView.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        appView.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        appView.heightAnchor.constraint(equalToConstant: 145).isActive=true
        appView.layer.cornerRadius = 7

        appView.addSubview(soundLabel)
        soundLabel.topAnchor.constraint(equalTo: appView.topAnchor,constant: 10).isActive=true
        soundLabel.leftAnchor.constraint(equalTo: appView.leftAnchor,constant: 10).isActive=true

        appView.addSubview(mySwitch)
        mySwitch.topAnchor.constraint(equalTo: appView.topAnchor,constant: 10).isActive=true
        mySwitch.rightAnchor.constraint(equalTo: appView.rightAnchor,constant: -10).isActive=true

        appView.addSubview(bigView)
        bigView.topAnchor.constraint(equalTo: mySwitch.bottomAnchor,constant: 5).isActive=true
        bigView.leftAnchor.constraint(equalTo: appView.leftAnchor,constant: 10).isActive=true
        bigView.rightAnchor.constraint(equalTo: appView.rightAnchor).isActive=true
        bigView.heightAnchor.constraint(equalToConstant: 1).isActive=true

        appView.addSubview(vibrateLabel)
        vibrateLabel.topAnchor.constraint(equalTo: bigView.bottomAnchor,constant: 10).isActive=true
        vibrateLabel.leftAnchor.constraint(equalTo: appView.leftAnchor,constant: 10).isActive=true

        appView.addSubview(phoneSwitch)
        phoneSwitch.topAnchor.constraint(equalTo: bigView.bottomAnchor,constant: 10).isActive=true
        phoneSwitch.rightAnchor.constraint(equalTo: appView.rightAnchor,constant: -10).isActive=true

        appView.addSubview(maxView)
        maxView.topAnchor.constraint(equalTo: phoneSwitch.bottomAnchor,constant: 5).isActive=true
        maxView.leftAnchor.constraint(equalTo: appView.leftAnchor,constant: 10).isActive=true
        maxView.rightAnchor.constraint(equalTo: appView.rightAnchor).isActive=true
        maxView.heightAnchor.constraint(equalToConstant: 1).isActive=true

        appView.addSubview(previewLabel)
        previewLabel.topAnchor.constraint(equalTo: maxView.bottomAnchor,constant: 10).isActive=true
        previewLabel.leftAnchor.constraint(equalTo: appView.leftAnchor,constant: 10).isActive=true

        appView.addSubview(macSwitch)
        macSwitch.topAnchor.constraint(equalTo: maxView.bottomAnchor,constant: 10).isActive=true
        macSwitch.rightAnchor.constraint(equalTo: appView.rightAnchor,constant: -10).isActive=true


        //Locak View
        homeView.addSubview(lockView)
        lockView.topAnchor.constraint(equalTo: appView.bottomAnchor,constant: 10).isActive=true
        lockView.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        lockView.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        lockView.heightAnchor.constraint(equalToConstant: 50).isActive=true
        lockView.layer.cornerRadius = 7

        lockView.addSubview(nameLabel)
        nameLabel.topAnchor.constraint(equalTo: lockView.topAnchor,constant: 12).isActive=true
        nameLabel.leftAnchor.constraint(equalTo: lockView.leftAnchor,constant: 10).isActive=true

        lockView.addSubview(screenSwitch)
        screenSwitch.topAnchor.constraint(equalTo: lockView.topAnchor,constant: 10).isActive=true
        screenSwitch.rightAnchor.constraint(equalTo: lockView.rightAnchor,constant: -10).isActive=true

        homeView.addSubview(displayLabel)
        displayLabel.topAnchor.constraint(equalTo: lockView.bottomAnchor,constant: 10).isActive=true
        displayLabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 15).isActive=true
        displayLabel.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -15).isActive=true

        homeView.addSubview(badgeLabel)
        badgeLabel.topAnchor.constraint(equalTo: displayLabel.bottomAnchor,constant: 30).isActive=true
        badgeLabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 15).isActive=true
        badgeLabel.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -15).isActive=true

        homeView.addSubview(alertView)
        alertView.topAnchor.constraint(equalTo: badgeLabel.bottomAnchor,constant: 10).isActive=true
        alertView.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        alertView.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        alertView.heightAnchor.constraint(equalToConstant: 95).isActive=true
        alertView.layer.cornerRadius = 7
        
        alertView.addSubview(includeLabel)
        includeLabel.topAnchor.constraint(equalTo: alertView.topAnchor,constant: 10).isActive=true
        includeLabel.leftAnchor.constraint(equalTo: alertView.leftAnchor,constant: 10).isActive=true
        
        alertView.addSubview(channelSwitch)
        channelSwitch.topAnchor.constraint(equalTo: alertView.topAnchor,constant: 10).isActive=true
        channelSwitch.rightAnchor.constraint(equalTo: alertView.rightAnchor,constant: -10).isActive=true
        
        alertView.addSubview(unreadView)
        unreadView.topAnchor.constraint(equalTo: channelSwitch.bottomAnchor,constant: 7).isActive=true
        unreadView.leftAnchor.constraint(equalTo: alertView.leftAnchor,constant: 10).isActive=true
        unreadView.rightAnchor.constraint(equalTo: alertView.rightAnchor).isActive=true
        unreadView.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        alertView.addSubview(countLabel)
        countLabel.topAnchor.constraint(equalTo: unreadView.bottomAnchor,constant: 10).isActive=true
        countLabel.leftAnchor.constraint(equalTo: alertView.leftAnchor,constant: 10).isActive=true
        
        alertView.addSubview(workSwitch)
        workSwitch.topAnchor.constraint(equalTo: unreadView.bottomAnchor,constant: 7).isActive=true
        workSwitch.rightAnchor.constraint(equalTo: alertView.rightAnchor,constant: -10).isActive=true
        
        homeView.addSubview(numberLabel)
        numberLabel.topAnchor.constraint(equalTo: alertView.bottomAnchor,constant: 10).isActive=true
        numberLabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 15).isActive=true
        numberLabel.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -15).isActive=true
        
        homeView.addSubview(tollView)
        tollView.topAnchor.constraint(equalTo: numberLabel.bottomAnchor,constant: 20).isActive=true
        tollView.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        tollView.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        tollView.heightAnchor.constraint(equalToConstant: 50).isActive=true
        tollView.layer.cornerRadius = 7
        
        tollView.addSubview(newLabel)
        newLabel.topAnchor.constraint(equalTo: tollView.topAnchor,constant: 10).isActive=true
        newLabel.leftAnchor.constraint(equalTo: tollView.leftAnchor,constant: 10).isActive=true
        
        tollView.addSubview(nextSwitch)
        nextSwitch.topAnchor.constraint(equalTo: tollView.topAnchor,constant: 10).isActive=true
        nextSwitch.rightAnchor.constraint(equalTo: tollView.rightAnchor,constant: -10).isActive=true
        
        homeView.addSubview(reviceLabel)
        reviceLabel.topAnchor.constraint(equalTo: tollView.bottomAnchor,constant: 10).isActive=true
        reviceLabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 15).isActive=true
        reviceLabel.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -15).isActive=true
        reviceLabel.numberOfLines = 3
        
        homeView.addSubview(resetView)
        resetView.topAnchor.constraint(equalTo: reviceLabel.bottomAnchor,constant: 20).isActive=true
        resetView.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        resetView.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        resetView.heightAnchor.constraint(equalToConstant: 50).isActive=true
        resetView.layer.cornerRadius = 7
        
        resetView.addSubview(allLabel)
        allLabel.topAnchor.constraint(equalTo: resetView.topAnchor,constant: 12).isActive=true
        allLabel.leftAnchor.constraint(equalTo: resetView.leftAnchor,constant: 10).isActive=true
        
        homeView.addSubview(undoLabel)
        undoLabel.topAnchor.constraint(equalTo: resetView.bottomAnchor,constant: 10).isActive=true
        undoLabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 15).isActive=true
        undoLabel.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -15).isActive=true
        undoLabel.numberOfLines = 3
        
        
    }
}

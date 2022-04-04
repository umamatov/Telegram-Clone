//
//  SetingAnchors.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 25/03/22.
//

import UIKit

extension SettingsViewController{
    
    func settingAnchors(){
        
        view.addSubview(editlabel)
        editlabel.topAnchor.constraint(equalTo: view.topAnchor,constant: 30).isActive=true
        editlabel.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -40).isActive=true
        
        homeview.addSubview(maniamge)
        maniamge.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 0).isActive=true
        maniamge.centerXAnchor.constraint(equalTo: homeview.centerXAnchor).isActive=true
        maniamge.heightAnchor.constraint(equalToConstant: 100).isActive=true
        maniamge.widthAnchor.constraint(equalToConstant: 100).isActive=true
        manview.layer.cornerRadius = 50
        
        homeview.addSubview(namelabel)
        namelabel.topAnchor.constraint(equalTo: maniamge.bottomAnchor,constant: 5).isActive=true
        namelabel.centerXAnchor.constraint(equalTo: homeview.centerXAnchor).isActive=true
        
        homeview.addSubview(numberlabel)
        numberlabel.topAnchor.constraint(equalTo: namelabel.bottomAnchor,constant: 5).isActive=true
        numberlabel.centerXAnchor.constraint(equalTo: homeview.centerXAnchor).isActive=true
        
        homeview.addSubview(usernamebtn)
        usernamebtn.topAnchor.constraint(equalTo: numberlabel.bottomAnchor,constant: 10).isActive=true
        usernamebtn.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        usernamebtn.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -10).isActive=true
        usernamebtn.heightAnchor.constraint(equalToConstant: 40).isActive=true
        usernamebtn.layer.masksToBounds = true
        usernamebtn.layer.cornerRadius = 5
        
        homeview.addSubview(setview)
        setview.topAnchor.constraint(equalTo: usernamebtn.bottomAnchor,constant: 10).isActive=true
        setview.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        setview.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -10).isActive=true
        setview.heightAnchor.constraint(equalToConstant: 165).isActive=true
        
        setview.addSubview(savedimage)
        savedimage.topAnchor.constraint(equalTo: setview.topAnchor,constant: 10).isActive=true
        savedimage.leftAnchor.constraint(equalTo: setview.leftAnchor,constant: 10).isActive=true
        savedimage.heightAnchor.constraint(equalToConstant: 31).isActive=true
        savedimage.widthAnchor.constraint(equalToConstant: 32).isActive=true
        savedimage.layer.masksToBounds = true
        savedimage.layer.cornerRadius = 15
        
        setview.addSubview(messagebtn)
        messagebtn.topAnchor.constraint(equalTo: setview.topAnchor,constant: 8).isActive=true
        messagebtn.leftAnchor.constraint(equalTo: savedimage.rightAnchor,constant: 5).isActive=true
        messagebtn.addTarget(self, action: #selector(fortapped), for: .touchUpInside)
        
        setview.addSubview(rieghtimage)
        rieghtimage.topAnchor.constraint(equalTo: setview.topAnchor,constant: 8).isActive=true
        rieghtimage.rightAnchor.constraint(equalTo: setview.rightAnchor,constant: -10).isActive=true
        
        setview.addSubview(lineview)
        lineview.topAnchor.constraint(equalTo: savedimage.bottomAnchor,constant: 5).isActive=true
        lineview.leftAnchor.constraint(equalTo: setview.leftAnchor,constant: 45).isActive=true
        lineview.rightAnchor.constraint(equalTo: setview.rightAnchor,constant: -0).isActive=true
        lineview.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        setview.addSubview(colorview)
        colorview.topAnchor.constraint(equalTo: lineview.bottomAnchor,constant: 5).isActive=true
        colorview.leftAnchor.constraint(equalTo: setview.leftAnchor,constant: 14).isActive=true
        colorview.heightAnchor.constraint(equalToConstant: 27).isActive=true
        colorview.widthAnchor.constraint(equalToConstant: 25).isActive=true
        colorview.layer.cornerRadius = 5
    
        colorview.addSubview(phoneimage)
        phoneimage.topAnchor.constraint(equalTo: colorview.topAnchor,constant: 1).isActive=true
        phoneimage.leftAnchor.constraint(equalTo: colorview.leftAnchor,constant: 0).isActive=true
        
        setview.addSubview(callbtn)
        callbtn.topAnchor.constraint(equalTo: lineview.bottomAnchor,constant: 0).isActive=true
        callbtn.leftAnchor.constraint(equalTo: phoneimage.rightAnchor,constant: 11).isActive=true
        
        setview.addSubview(first)
        first.topAnchor.constraint(equalTo: lineview.bottomAnchor,constant: 5).isActive=true
        first.rightAnchor.constraint(equalTo: setview.rightAnchor,constant: -10).isActive=true
        
        setview.addSubview(chizview)
        chizview.topAnchor.constraint(equalTo: colorview.bottomAnchor,constant: 5).isActive=true
        chizview.leftAnchor.constraint(equalTo: setview.leftAnchor,constant: 45).isActive=true
        chizview.rightAnchor.constraint(equalTo: setview.rightAnchor,constant: -0).isActive=true
        chizview.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        setview.addSubview(yellowview)
        yellowview.topAnchor.constraint(equalTo: chizview.bottomAnchor,constant: 5).isActive=true
        yellowview.leftAnchor.constraint(equalTo: setview.leftAnchor,constant: 14).isActive=true
        yellowview.heightAnchor.constraint(equalToConstant: 27).isActive=true
        yellowview.widthAnchor.constraint(equalToConstant: 25).isActive=true
        yellowview.layer.cornerRadius = 5
        
        yellowview.addSubview(deviceimage)
        deviceimage.topAnchor.constraint(equalTo: yellowview.topAnchor,constant: 1).isActive=true
        deviceimage.leftAnchor.constraint(equalTo: yellowview.leftAnchor,constant: 1).isActive=true
        
        setview.addSubview(deviceslabel)
        deviceslabel.topAnchor.constraint(equalTo: chizview.bottomAnchor,constant: 7).isActive=true
        deviceslabel.leftAnchor.constraint(equalTo: yellowview.rightAnchor,constant: 11).isActive=true
        
        setview.addSubview(second)
        second.topAnchor.constraint(equalTo: chizview.bottomAnchor,constant: 5).isActive=true
        second.rightAnchor.constraint(equalTo: setview.rightAnchor,constant: -10).isActive=true
        
        setview.addSubview(cubicview)
        cubicview.topAnchor.constraint(equalTo: yellowview.bottomAnchor,constant: 5).isActive=true
        cubicview.leftAnchor.constraint(equalTo: setview.leftAnchor,constant: 45).isActive=true
        cubicview.rightAnchor.constraint(equalTo: setview.rightAnchor,constant: -0).isActive=true
        cubicview.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        setview.addSubview(pinkview)
        pinkview.topAnchor.constraint(equalTo: cubicview.bottomAnchor,constant: 5).isActive=true
        pinkview.leftAnchor.constraint(equalTo: setview.leftAnchor,constant: 14).isActive=true
        pinkview.heightAnchor.constraint(equalToConstant: 27).isActive=true
        pinkview.widthAnchor.constraint(equalToConstant: 25).isActive=true
        pinkview.layer.cornerRadius = 5
        
        pinkview.addSubview(folderimage)
        folderimage.topAnchor.constraint(equalTo: pinkview.topAnchor,constant: 3.5).isActive=true
        folderimage.leftAnchor.constraint(equalTo: pinkview.leftAnchor,constant: 2.5).isActive=true
        folderimage.heightAnchor.constraint(equalToConstant: 20).isActive=true
        folderimage.widthAnchor.constraint(equalToConstant: 20).isActive=true
        
        setview.addSubview(chatlabel)
        chatlabel.topAnchor.constraint(equalTo: cubicview.bottomAnchor,constant: 7).isActive=true
        chatlabel.leftAnchor.constraint(equalTo: pinkview.rightAnchor,constant: 11).isActive=true
        
        setview.addSubview(thorth)
        thorth.topAnchor.constraint(equalTo: cubicview.bottomAnchor,constant: 5).isActive=true
        thorth.rightAnchor.constraint(equalTo: setview.rightAnchor,constant: -10).isActive=true
        
        homeview.addSubview(soundview)
        soundview.topAnchor.constraint(equalTo: setview.bottomAnchor,constant: 20).isActive=true
        soundview.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        soundview.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -10).isActive=true
        soundview.heightAnchor.constraint(equalToConstant: 235).isActive=true
        
        soundview.addSubview(redview)
        redview.topAnchor.constraint(equalTo: soundview.topAnchor,constant: 10).isActive=true
        redview.leftAnchor.constraint(equalTo: soundview.leftAnchor,constant: 14).isActive=true
        redview.heightAnchor.constraint(equalToConstant: 27).isActive=true
        redview.widthAnchor.constraint(equalToConstant: 25).isActive=true
        redview.layer.cornerRadius = 5
        
        redview.addSubview(alarmimage)
        alarmimage.topAnchor.constraint(equalTo: redview.topAnchor,constant: 1).isActive=true
        alarmimage.leftAnchor.constraint(equalTo: redview.leftAnchor,constant: 0).isActive=true
        
        soundview.addSubview(notificationlabel)
        notificationlabel.topAnchor.constraint(equalTo: soundview.topAnchor,constant: 10).isActive=true
        notificationlabel.leftAnchor.constraint(equalTo: redview.rightAnchor,constant: 11).isActive=true
        
        soundview.addSubview(fourth)
        fourth.topAnchor.constraint(equalTo: soundview.topAnchor,constant: 10).isActive=true
        fourth.rightAnchor.constraint(equalTo: soundview.rightAnchor,constant: -10).isActive=true
        
        soundview.addSubview(iphonview)
        iphonview.topAnchor.constraint(equalTo: redview.bottomAnchor,constant: 5).isActive=true
        iphonview.leftAnchor.constraint(equalTo: soundview.leftAnchor,constant: 45).isActive=true
        iphonview.rightAnchor.constraint(equalTo: soundview.rightAnchor,constant: -0).isActive=true
        iphonview.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        soundview.addSubview(privacy)
        privacy.topAnchor.constraint(equalTo: iphonview.bottomAnchor, constant: 5).isActive=true
        privacy.leftAnchor.constraint(equalTo: soundview.leftAnchor,constant: 14).isActive=true
        privacy.heightAnchor.constraint(equalToConstant: 27).isActive=true
        privacy.widthAnchor.constraint(equalToConstant: 25).isActive=true
        privacy.layer.cornerRadius = 5
        
        privacy.addSubview(locimage)
        locimage.topAnchor.constraint(equalTo: privacy.topAnchor,constant: 2).isActive=true
        locimage.leftAnchor.constraint(equalTo: privacy.leftAnchor,constant: 2).isActive=true
        locimage.heightAnchor.constraint(equalToConstant: 20).isActive=true
        locimage.widthAnchor.constraint(equalToConstant: 20).isActive=true
        
        soundview.addSubview(securitylabel)
        securitylabel.topAnchor.constraint(equalTo: iphonview.bottomAnchor,constant: 7).isActive=true
        securitylabel.leftAnchor.constraint(equalTo: privacy.rightAnchor,constant: 11).isActive=true
        
        soundview.addSubview(fifth)
        fifth.topAnchor.constraint(equalTo: iphonview.topAnchor,constant: 10).isActive=true
        fifth.rightAnchor.constraint(equalTo: soundview.rightAnchor,constant: -10).isActive=true
        
        soundview.addSubview(manview)
        manview.topAnchor.constraint(equalTo: privacy.bottomAnchor,constant: 5).isActive=true
        manview.leftAnchor.constraint(equalTo: soundview.leftAnchor,constant: 45).isActive=true
        manview.rightAnchor.constraint(equalTo: soundview.rightAnchor,constant: -0).isActive=true
        manview.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        soundview.addSubview(storage)
        storage.topAnchor.constraint(equalTo: manview.bottomAnchor,constant: 5).isActive=true
        storage.leftAnchor.constraint(equalTo: soundview.leftAnchor,constant: 14).isActive=true
        storage.heightAnchor.constraint(equalToConstant: 27).isActive=true
        storage.widthAnchor.constraint(equalToConstant: 25).isActive=true
        storage.layer.cornerRadius = 5
        
        storage.addSubview(coinimage)
        coinimage.topAnchor.constraint(equalTo: storage.topAnchor,constant: 3).isActive=true
        coinimage.leftAnchor.constraint(equalTo: storage.leftAnchor,constant: 2).isActive=true
        coinimage.heightAnchor.constraint(equalToConstant: 20).isActive=true
        coinimage.widthAnchor.constraint(equalToConstant: 20).isActive=true
        
        soundview.addSubview(datalabel)
        datalabel.topAnchor.constraint(equalTo: manview.topAnchor,constant: 8).isActive=true
        datalabel.leftAnchor.constraint(equalTo: storage.rightAnchor,constant: 11).isActive=true
        
        soundview.addSubview(sixth)
        sixth.topAnchor.constraint(equalTo: manview.topAnchor,constant: 8).isActive=true
        sixth.rightAnchor.constraint(equalTo: soundview.rightAnchor,constant: -10).isActive=true
        
        soundview.addSubview(cupview)
        cupview.topAnchor.constraint(equalTo: storage.bottomAnchor,constant: 5).isActive=true
        cupview.leftAnchor.constraint(equalTo: soundview.leftAnchor,constant: 45).isActive=true
        cupview.rightAnchor.constraint(equalTo: soundview.rightAnchor,constant: -0).isActive=true
        cupview.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        soundview.addSubview(systemblue)
        systemblue.topAnchor.constraint(equalTo: cupview.bottomAnchor,constant: 5).isActive=true
        systemblue.leftAnchor.constraint(equalTo: soundview.leftAnchor,constant: 14).isActive=true
        systemblue.heightAnchor.constraint(equalToConstant: 27).isActive=true
        systemblue.widthAnchor.constraint(equalToConstant: 25).isActive=true
        systemblue.layer.cornerRadius = 5
        
        systemblue.addSubview(contrastimage)
        contrastimage.topAnchor.constraint(equalTo: systemblue.topAnchor,constant: 3).isActive=true
        contrastimage.leftAnchor.constraint(equalTo: systemblue.leftAnchor,constant: 2).isActive=true
        contrastimage.heightAnchor.constraint(equalToConstant: 20).isActive=true
        contrastimage.widthAnchor.constraint(equalToConstant: 20).isActive=true
        
        soundview.addSubview(appearancelabel)
        appearancelabel.topAnchor.constraint(equalTo: cupview.topAnchor,constant: 8).isActive=true
        appearancelabel.leftAnchor.constraint(equalTo: systemblue.rightAnchor,constant: 11).isActive=true
        
        soundview.addSubview(seventth)
        seventth.topAnchor.constraint(equalTo: cupview.topAnchor,constant: 8).isActive=true
        seventth.rightAnchor.constraint(equalTo: soundview.rightAnchor,constant: -10).isActive=true
        
        soundview.addSubview(tea)
        tea.topAnchor.constraint(equalTo: systemblue.bottomAnchor,constant: 5).isActive=true
        tea.leftAnchor.constraint(equalTo: soundview.leftAnchor,constant: 45).isActive=true
        tea.rightAnchor.constraint(equalTo: soundview.rightAnchor,constant: -0).isActive=true
        tea.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        soundview.addSubview(dark)
        dark.topAnchor.constraint(equalTo: tea.bottomAnchor,constant: 5).isActive=true
        dark.leftAnchor.constraint(equalTo: soundview.leftAnchor,constant: 14).isActive=true
        dark.heightAnchor.constraint(equalToConstant: 27).isActive=true
        dark.widthAnchor.constraint(equalToConstant: 25).isActive=true
        dark.layer.cornerRadius = 5
        
        dark.addSubview(globalimage)
        globalimage.topAnchor.constraint(equalTo: dark.topAnchor,constant: 3).isActive=true
        globalimage.leftAnchor.constraint(equalTo: dark.leftAnchor,constant: 2).isActive=true
        globalimage.heightAnchor.constraint(equalToConstant: 20).isActive=true
        globalimage.widthAnchor.constraint(equalToConstant: 20).isActive=true
        
        soundview.addSubview(languagelabel)
        languagelabel.topAnchor.constraint(equalTo: tea.topAnchor,constant: 8).isActive=true
        languagelabel.leftAnchor.constraint(equalTo: dark.rightAnchor,constant: 11).isActive=true
        
        soundview.addSubview(eghtth)
        eghtth.topAnchor.constraint(equalTo: tea.topAnchor,constant: 8).isActive=true
        eghtth.rightAnchor.constraint(equalTo: soundview.rightAnchor,constant: -10).isActive=true
        
        soundview.addSubview(englishlabel)
        englishlabel.topAnchor.constraint(equalTo: tea.bottomAnchor,constant: 8).isActive=true
        englishlabel.rightAnchor.constraint(equalTo: eghtth.leftAnchor,constant: -10).isActive=true
        
        
        soundview.addSubview(cape)
        cape.topAnchor.constraint(equalTo: dark.bottomAnchor,constant: 5).isActive=true
        cape.leftAnchor.constraint(equalTo: soundview.leftAnchor,constant: 45).isActive=true
        cape.rightAnchor.constraint(equalTo: soundview.rightAnchor,constant: -0).isActive=true
        cape.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        soundview.addSubview(orange)
        orange.topAnchor.constraint(equalTo: cape.bottomAnchor,constant: 5).isActive=true
        orange.leftAnchor.constraint(equalTo: soundview.leftAnchor,constant: 14).isActive=true
        orange.heightAnchor.constraint(equalToConstant: 27).isActive=true
        orange.widthAnchor.constraint(equalToConstant: 25).isActive=true
        orange.layer.cornerRadius = 5
        
        orange.addSubview(finderimage)
        finderimage.topAnchor.constraint(equalTo: orange.topAnchor,constant: 3).isActive=true
        finderimage.leftAnchor.constraint(equalTo: orange.leftAnchor,constant: 2.5).isActive=true
        finderimage.heightAnchor.constraint(equalToConstant: 20).isActive=true
        finderimage.widthAnchor.constraint(equalToConstant: 20).isActive=true
        
        soundview.addSubview(stickerlabel)
        stickerlabel.topAnchor.constraint(equalTo: cape.topAnchor,constant: 8).isActive=true
        stickerlabel.leftAnchor.constraint(equalTo: orange.rightAnchor,constant: 11).isActive=true
        
        soundview.addSubview(nineth)
        nineth.topAnchor.constraint(equalTo: cape.topAnchor,constant: 8).isActive=true
        nineth.rightAnchor.constraint(equalTo: soundview.rightAnchor,constant: -10).isActive=true
        
        homeview.addSubview(askview)
        askview.topAnchor.constraint(equalTo: soundview.bottomAnchor,constant: 20).isActive=true
        askview.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        askview.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -10).isActive=true
        askview.heightAnchor.constraint(equalToConstant: 125).isActive=true
        
        askview.addSubview(nexview)
        nexview.topAnchor.constraint(equalTo: askview.topAnchor,constant: 10).isActive=true
        nexview.leftAnchor.constraint(equalTo: askview.leftAnchor,constant: 14).isActive=true
        nexview.heightAnchor.constraint(equalToConstant: 27).isActive=true
        nexview.widthAnchor.constraint(equalToConstant: 25).isActive=true
        nexview.layer.cornerRadius = 5
        
        nexview.addSubview(wechatimage)
        wechatimage.topAnchor.constraint(equalTo: nexview.topAnchor,constant: 3).isActive=true
        wechatimage.leftAnchor.constraint(equalTo: nexview.leftAnchor,constant: 2).isActive=true
        wechatimage.heightAnchor.constraint(equalToConstant: 20).isActive=true
        wechatimage.widthAnchor.constraint(equalToConstant: 20).isActive=true
        
        askview.addSubview(questionlabel)
        questionlabel.topAnchor.constraint(equalTo: askview.topAnchor,constant: 11).isActive=true
        questionlabel.leftAnchor.constraint(equalTo: nexview.rightAnchor,constant: 11).isActive=true
        
        askview.addSubview(tenth)
        tenth.topAnchor.constraint(equalTo: askview.topAnchor,constant: 11).isActive=true
        tenth.rightAnchor.constraint(equalTo: askview.rightAnchor,constant: -10).isActive=true
        
        askview.addSubview(funy)
        funy.topAnchor.constraint(equalTo: nexview.bottomAnchor,constant: 5).isActive=true
        funy.leftAnchor.constraint(equalTo: askview.leftAnchor,constant: 45).isActive=true
        funy.rightAnchor.constraint(equalTo: askview.rightAnchor,constant: -0).isActive=true
        funy.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        askview.addSubview(cyan)
        cyan.topAnchor.constraint(equalTo: funy.bottomAnchor,constant: 5).isActive=true
        cyan.leftAnchor.constraint(equalTo: askview.leftAnchor,constant: 14).isActive=true
        cyan.heightAnchor.constraint(equalToConstant: 27).isActive=true
        cyan.widthAnchor.constraint(equalToConstant: 25).isActive=true
        cyan.layer.cornerRadius = 5
        
        cyan.addSubview(faqimage)
        faqimage.topAnchor.constraint(equalTo: cyan.topAnchor,constant: 3).isActive=true
        faqimage.leftAnchor.constraint(equalTo: cyan.leftAnchor,constant: 2).isActive=true
        faqimage.heightAnchor.constraint(equalToConstant: 22).isActive=true
        faqimage.widthAnchor.constraint(equalToConstant: 22).isActive=true
        
        askview.addSubview(telegramlabel)
        telegramlabel.topAnchor.constraint(equalTo: funy.bottomAnchor,constant: 8).isActive=true
        telegramlabel.leftAnchor.constraint(equalTo: cyan.rightAnchor,constant: 11).isActive=true
        
        askview.addSubview(elevnth)
        elevnth.topAnchor.constraint(equalTo: funy.bottomAnchor,constant: 8).isActive=true
        elevnth.rightAnchor.constraint(equalTo: askview.rightAnchor,constant: -10).isActive=true
        
        askview.addSubview(zoomview)
        zoomview.topAnchor.constraint(equalTo: cyan.bottomAnchor,constant: 5).isActive=true
        zoomview.leftAnchor.constraint(equalTo: askview.leftAnchor,constant: 45).isActive=true
        zoomview.rightAnchor.constraint(equalTo: askview.rightAnchor,constant: -0).isActive=true
        zoomview.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        askview.addSubview(nyellowview)
        nyellowview.topAnchor.constraint(equalTo: zoomview.bottomAnchor,constant: 5).isActive=true
        nyellowview.leftAnchor.constraint(equalTo: askview.leftAnchor,constant: 14).isActive=true
        nyellowview.heightAnchor.constraint(equalToConstant: 27).isActive=true
        nyellowview.widthAnchor.constraint(equalToConstant: 25).isActive=true
        nyellowview.layer.cornerRadius = 5
        
        nyellowview.addSubview(lightimage)
        lightimage.topAnchor.constraint(equalTo: nyellowview.topAnchor,constant: 3).isActive=true
        lightimage.leftAnchor.constraint(equalTo: nyellowview.leftAnchor,constant: 2).isActive=true
        lightimage.heightAnchor.constraint(equalToConstant: 20).isActive=true
        lightimage.widthAnchor.constraint(equalToConstant: 20).isActive=true
        
        askview.addSubview(featureslabel)
        featureslabel.topAnchor.constraint(equalTo: zoomview.bottomAnchor,constant: 8).isActive=true
        featureslabel.leftAnchor.constraint(equalTo: nyellowview.rightAnchor,constant: 11).isActive=true
        
        askview.addSubview(last)
        last.topAnchor.constraint(equalTo: zoomview.bottomAnchor,constant: 8).isActive=true
        last.rightAnchor.constraint(equalTo: askview.rightAnchor,constant: -10).isActive=true
        
    }
}

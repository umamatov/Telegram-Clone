//
//  TableViewChat.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 28/03/22.
//

import UIKit

class TableViewChatCell22: UITableViewCell {
    
    static let identifier = "TableViewChatCell22"
    
//    var babyimage: UIImageView = {
//        let babyimage = UIImageView()
//        babyimage.translatesAutoresizingMaskIntoConstraints=false
//        babyimage.image = UIImage(named: "baby_image")
//        return babyimage
//    }()
//    
//    var firstview: UIView = {
//        let firstview = UIView()
//        firstview.translatesAutoresizingMaskIntoConstraints=false
//        firstview.backgroundColor = UIColor.white
//        firstview.layer.cornerRadius = 30
//        return firstview
//    }()
//    
//    
//    var alertlabe: UILabel = {
//        let alertlabel = UILabel()
//        alertlabel.translatesAutoresizingMaskIntoConstraints=false
//        alertlabel.font = UIFont.systemFont(ofSize: 20)
//        alertlabel.textColor = UIColor.black
//        alertlabel.text = "Assalomu alekum"
//        return alertlabel
//    }()
//    
//    var timelabel: UILabel = {
//        let timelabel = UILabel()
//        timelabel.translatesAutoresizingMaskIntoConstraints=false
//        timelabel.font = UIFont.systemFont(ofSize: 11)
//        timelabel.textColor = UIColor.systemGray
//        timelabel.text = "12:30 PM"
//        return timelabel
//    }()
//    
//    var secondview: UIView = {
//        let secondview = UIView()
//        secondview.translatesAutoresizingMaskIntoConstraints=false
//        secondview.backgroundColor = UIColor(rgb: 0x7ED321)
//        secondview.layer.cornerRadius = 30
//        return secondview
//    }()
//    
//    var penlabel: UILabel = {
//        let penlabel = UILabel()
//        penlabel.translatesAutoresizingMaskIntoConstraints=false
//        penlabel.font = UIFont.systemFont(ofSize: 20)
//        penlabel.textColor = UIColor.black
//        penlabel.text = "Va alekum Assalom"
//        return penlabel
//    }()
//    
//    var checkimage: UIImageView = {
//        let checkimage = UIImageView()
//        checkimage.translatesAutoresizingMaskIntoConstraints=false
//        checkimage.image = UIImage(named: "check_image")
//        return checkimage
//    }()
//    
//    var lastlabel: UILabel = {
//        let lastlabel = UILabel()
//        lastlabel.translatesAutoresizingMaskIntoConstraints=false
//        lastlabel.font = UIFont.systemFont(ofSize: 11)
//        lastlabel.textColor = UIColor.systemGray
//        lastlabel.text = "12:40 PM"
//        return lastlabel
//    }()
//    
//    var thorghtthview: UIView = {
//        let thorghtthview = UIView()
//        thorghtthview.translatesAutoresizingMaskIntoConstraints=false
//        thorghtthview.backgroundColor = UIColor.white
//        thorghtthview.layer.cornerRadius = 30
//        return thorghtthview
//    }()
//    
//    var freandslabel: UILabel = {
//        let freandslabel = UILabel()
//        freandslabel.translatesAutoresizingMaskIntoConstraints=false
//        freandslabel.font = UIFont.systemFont(ofSize: 20)
//        freandslabel.textColor = UIColor.black
//        freandslabel.text = "Nima gap nima yangilila ishalr zormi charchash yoqmi"
//        return freandslabel
//    }()
//    
//    var pmlabel: UILabel = {
//        let pmlabel = UILabel()
//        pmlabel.translatesAutoresizingMaskIntoConstraints=false
//        pmlabel.font = UIFont.systemFont(ofSize: 11)
//        pmlabel.textColor = UIColor.systemGray
//        pmlabel.text = "1:10 PM"
//        return pmlabel
//    }()
//    
//    var fourthview: UIView = {
//        let fourthview = UIView()
//        fourthview.translatesAutoresizingMaskIntoConstraints=false
//        fourthview.backgroundColor = UIColor(rgb: 0x7ED321)
//        fourthview.layer.cornerRadius = 30
//        return fourthview
//    }()
//    
//    var backlabel: UILabel = {
//        let backlabel = UILabel()
//        backlabel.translatesAutoresizingMaskIntoConstraints=false
//        backlabel.font = UIFont.systemFont(ofSize: 20)
//        backlabel.textColor = UIColor.black
//        backlabel.text = "Rahmat OLLOHGA shukur ozizham yahshimisz uydegilar yahshimi charchame ishlayapsimi nima gapla bollar hamasi yahshimi salom aytin"
//        backlabel.numberOfLines = 6
//        return backlabel
//    }()
//    
//    var rightimage: UIImageView = {
//        let rightimage = UIImageView()
//        rightimage.translatesAutoresizingMaskIntoConstraints=false
//        rightimage.image = UIImage(named: "check_image")
//        return rightimage
//    }()
//    
//    var setlabel: UILabel = {
//        let setlabel = UILabel()
//        setlabel.translatesAutoresizingMaskIntoConstraints=false
//        setlabel.font = UIFont.systemFont(ofSize: 11)
//        setlabel.textColor = UIColor.systemGray
//        setlabel.text = "1:30 PM"
//        return setlabel
//    }()
//    
//    var fifeview: UIView = {
//        let fifeview = UIView()
//        fifeview.translatesAutoresizingMaskIntoConstraints=false
//        fifeview.backgroundColor = UIColor.white
//        fifeview.layer.cornerRadius = 30
//        return fifeview
//    }()
//    
//    var longlabel: UILabel = {
//        let longlabel = UILabel()
//        longlabel.translatesAutoresizingMaskIntoConstraints=false
//        longlabel.font = UIFont.systemFont(ofSize: 20)
//        longlabel.textColor = UIColor.black
//        longlabel.text = "Rahmat zor boladi hama tinch yahshi ishlab yurishibdi salom aytyapti ular ham ozin nima ishlar qilyapsan qatlardasan dos qachon kelasan "
//        longlabel.numberOfLines = 6
//        return longlabel
//    }()
//    
//    var penslelabel: UILabel = {
//        let penslelabel = UILabel()
//        penslelabel.translatesAutoresizingMaskIntoConstraints=false
//        penslelabel.font = UIFont.systemFont(ofSize: 11)
//        penslelabel.textColor = UIColor.systemGray
//        penslelabel.text = "1:50 PM"
//        return penslelabel
//    }()
//    
//    var sixview: UIView = {
//        let sixview = UIView()
//        sixview.translatesAutoresizingMaskIntoConstraints=false
//        sixview.backgroundColor = UIColor(rgb: 0x7ED321)
//        sixview.layer.cornerRadius = 30
//        return sixview
//    }()
//    
//    var shortlabel: UILabel = {
//        let shortlabel = UILabel()
//        shortlabel.translatesAutoresizingMaskIntoConstraints=false
//        shortlabel.font = UIFont.systemFont(ofSize: 20)
//        shortlabel.textColor = UIColor.black
//        shortlabel.text = "Rahmat salomat bolishsin biz ham yuribmiz cheka cheka joylarda"
//        return shortlabel
//    }()
//    
//    var macimage: UIImageView = {
//        let macimage = UIImageView()
//        macimage.translatesAutoresizingMaskIntoConstraints=false
//        macimage.image = UIImage(named: "check_image")
//        return macimage
//    }()
//    
//    var badlabel: UILabel = {
//        let badlabel = UILabel()
//        badlabel.translatesAutoresizingMaskIntoConstraints=false
//        badlabel.font = UIFont.systemFont(ofSize: 11)
//        badlabel.textColor = UIColor.systemGray
//        badlabel.text = "2:00 PM"
//        return badlabel
//    }()
//    
//    
//    
//    
//    override init(style:UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//    
//        contentView.addSubview(babyimage)
//        babyimage.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 0).isActive=true
//        babyimage.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 0).isActive=true
//        babyimage.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -0).isActive=true
//        babyimage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: 0).isActive=true
//        
//        babyimage.addSubview(firstview)
//        firstview.topAnchor.constraint(equalTo: babyimage.topAnchor,constant: 10).isActive=true
//        firstview.leftAnchor.constraint(equalTo: babyimage.leftAnchor,constant: 10).isActive=true
//        firstview.heightAnchor.constraint(equalToConstant: 30).isActive=true
//        firstview.widthAnchor.constraint(equalToConstant: 220).isActive=true
//        firstview.layer.cornerRadius = 13
//        
//        firstview.addSubview(alertlabe)
//        alertlabe.topAnchor.constraint(equalTo: firstview.topAnchor,constant: 1).isActive=true
//        alertlabe.leftAnchor.constraint(equalTo: firstview.leftAnchor,constant: 5).isActive=true
//
//        firstview.addSubview(timelabel)
//        timelabel.topAnchor.constraint(equalTo: firstview.topAnchor,constant: 13).isActive=true
//        timelabel.rightAnchor.constraint(equalTo: firstview.rightAnchor,constant: -8).isActive=true
//        
//        babyimage.addSubview(secondview)
//        secondview.topAnchor.constraint(equalTo: firstview.bottomAnchor,constant: 10).isActive=true
//        secondview.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -10).isActive=true
//        secondview.heightAnchor.constraint(equalToConstant: 30).isActive=true
//        secondview.widthAnchor.constraint(equalToConstant: 260).isActive=true
//        secondview.layer.cornerRadius = 13
//        
//        secondview.addSubview(penlabel)
//        penlabel.topAnchor.constraint(equalTo: secondview.topAnchor,constant: 1).isActive=true
//        penlabel.leftAnchor.constraint(equalTo: secondview.leftAnchor,constant: 5).isActive=true
//
//        secondview.addSubview(checkimage)
//        checkimage.topAnchor.constraint(equalTo: secondview.topAnchor,constant: 5).isActive=true
//        checkimage.rightAnchor.constraint(equalTo: secondview.rightAnchor,constant: -3).isActive=true
//        
//        secondview.addSubview(lastlabel)
//        lastlabel.topAnchor.constraint(equalTo: secondview.topAnchor,constant: 13).isActive=true
//        lastlabel.rightAnchor.constraint(equalTo: checkimage.leftAnchor,constant: -2).isActive=true
//
//        babyimage.addSubview(thorghtthview)
//        thorghtthview.topAnchor.constraint(equalTo: secondview.bottomAnchor,constant: 10).isActive=true
//        thorghtthview.leftAnchor.constraint(equalTo: babyimage.leftAnchor,constant: 10).isActive=true
//        thorghtthview.rightAnchor.constraint(equalTo: babyimage.rightAnchor,constant: -50).isActive=true
//        thorghtthview.heightAnchor.constraint(equalToConstant: 60).isActive=true
//        thorghtthview.layer.cornerRadius = 13
//        
//        thorghtthview.addSubview(freandslabel)
//        freandslabel.topAnchor.constraint(equalTo: thorghtthview.topAnchor,constant: 3).isActive=true
//        freandslabel.leftAnchor.constraint(equalTo: thorghtthview.leftAnchor,constant: 5).isActive=true
//        freandslabel.rightAnchor.constraint(equalTo: thorghtthview.rightAnchor,constant: -5).isActive=true
//        freandslabel.numberOfLines = 2
//        
//        thorghtthview.addSubview(pmlabel)
//        pmlabel.bottomAnchor.constraint(equalTo: thorghtthview.bottomAnchor,constant: -5).isActive=true
//        pmlabel.rightAnchor.constraint(equalTo: thorghtthview.rightAnchor,constant: -8).isActive=true
//        
//        babyimage.addSubview(fourthview)
//        fourthview.topAnchor.constraint(equalTo: thorghtthview.bottomAnchor,constant: 10).isActive=true
//        fourthview.rightAnchor.constraint(equalTo: babyimage.rightAnchor,constant: -10).isActive=true
//        fourthview.leftAnchor.constraint(equalTo: babyimage.leftAnchor,constant: 50).isActive=true
//        fourthview.heightAnchor.constraint(equalToConstant: 130).isActive=true
//        fourthview.layer.cornerRadius = 13
//        
//        fourthview.addSubview(backlabel)
//        backlabel.topAnchor.constraint(equalTo: fourthview.topAnchor,constant: 5).isActive=true
//        backlabel.leftAnchor.constraint(equalTo: fourthview.leftAnchor,constant: 5).isActive=true
//        backlabel.rightAnchor.constraint(equalTo: fourthview.rightAnchor,constant: -5).isActive=true
//        
//        fourthview.addSubview(rightimage)
//        rightimage.bottomAnchor.constraint(equalTo: fourthview.bottomAnchor,constant: -5).isActive=true
//        rightimage.rightAnchor.constraint(equalTo: fourthview.rightAnchor,constant: -5).isActive=true
//        
//        fourthview.addSubview(setlabel)
//        setlabel.bottomAnchor.constraint(equalTo: fourthview.bottomAnchor,constant: -8).isActive=true
//        setlabel.rightAnchor.constraint(equalTo: rightimage.leftAnchor,constant: -5).isActive=true
//        
//        babyimage.addSubview(fifeview)
//        fifeview.topAnchor.constraint(equalTo: fourthview.bottomAnchor,constant: 10).isActive=true
//        fifeview.leftAnchor.constraint(equalTo: babyimage.leftAnchor,constant: 10).isActive=true
//        fifeview.rightAnchor.constraint(equalTo: babyimage.rightAnchor,constant: -50).isActive=true
//        fifeview.heightAnchor.constraint(equalToConstant: 130).isActive=true
//        fifeview.layer.cornerRadius = 13
//        
//        fifeview.addSubview(longlabel)
//        longlabel.topAnchor.constraint(equalTo: fifeview.topAnchor,constant: 5).isActive=true
//        longlabel.leftAnchor.constraint(equalTo: fifeview.leftAnchor,constant: 5).isActive=true
//        longlabel.rightAnchor.constraint(equalTo: fifeview.rightAnchor,constant: -5).isActive=true
//        
//        fifeview.addSubview(penslelabel)
//        penslelabel.bottomAnchor.constraint(equalTo: fifeview.bottomAnchor,constant: -8).isActive=true
//        penslelabel.rightAnchor.constraint(equalTo: fifeview.rightAnchor,constant: -10).isActive=true
//        
//        babyimage.addSubview(sixview)
//        sixview.topAnchor.constraint(equalTo: fifeview.bottomAnchor,constant: 10).isActive=true
//        sixview.rightAnchor.constraint(equalTo: babyimage.rightAnchor,constant: -10).isActive=true
//        sixview.leftAnchor.constraint(equalTo: babyimage.leftAnchor,constant: 50).isActive=true
//        sixview.heightAnchor.constraint(equalToConstant: 70).isActive=true
//        sixview.layer.cornerRadius = 13
//        
//        sixview.addSubview(shortlabel)
//        shortlabel.topAnchor.constraint(equalTo: sixview.topAnchor,constant: 5).isActive=true
//        shortlabel.leftAnchor.constraint(equalTo: sixview.leftAnchor,constant: 5).isActive=true
//        shortlabel.rightAnchor.constraint(equalTo: sixview.rightAnchor,constant: -5).isActive=true
//        shortlabel.numberOfLines = 2
//        
//        sixview.addSubview(macimage)
//        macimage.bottomAnchor.constraint(equalTo: sixview.bottomAnchor,constant: -1).isActive=true
//        macimage.rightAnchor.constraint(equalTo: sixview.rightAnchor,constant: -5).isActive=true
//        
//        sixview.addSubview(badlabel)
//        badlabel.bottomAnchor.constraint(equalTo: sixview.bottomAnchor,constant: -5).isActive=true
//        badlabel.rightAnchor.constraint(equalTo: macimage.leftAnchor,constant: -5).isActive=true
//        
//        
//        
//        
//        
//        
//        
//        
//        
//        
//}
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    

}

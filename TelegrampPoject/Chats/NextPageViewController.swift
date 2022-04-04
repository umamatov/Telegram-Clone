//
//  NextPageViewController.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 31/03/22.
//

import UIKit

class NextPageViewController: UIViewController {

    
    
    let scrollView: UIScrollView = {
        var scrollView = UIScrollView()
        let screensize: CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        let screenHeigth = screensize.height
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 10, width: screenWidth, height: screenHeigth))
        scrollView.contentSize = CGSize(width: screenWidth, height: 1500)
        return scrollView
    }()
    
    var homeview: UIView = {
        let homeview = UIView()
        return homeview
    }()
    
    var babyimage: UIImageView = {
        let babyimage = UIImageView()
        babyimage.translatesAutoresizingMaskIntoConstraints=false
        babyimage.image = UIImage(named: "baby_image")
        return babyimage
    }()
    
    var weblabel: UILabel = {
        let weblabel = UILabel()
        weblabel.translatesAutoresizingMaskIntoConstraints=false
        weblabel.font = UIFont.systemFont(ofSize: 20)
        weblabel.textColor = UIColor.white
        weblabel.text = "Jack Hack"
        return weblabel
    }()
    
    var firstview: UIView = {
        let firstview = UIView()
        firstview.translatesAutoresizingMaskIntoConstraints=false
        firstview.backgroundColor = UIColor.white
        firstview.layer.cornerRadius = 8
        return firstview
    }()
    
    var phoneimage: UIImageView = {
        let phoneimage = UIImageView()
        phoneimage.translatesAutoresizingMaskIntoConstraints=false
        phoneimage.image = UIImage(named: "phone_image-1")
        return phoneimage
    }()
    
    var calllabel: UILabel = {
        let calllabel = UILabel()
        calllabel.translatesAutoresizingMaskIntoConstraints=false
        calllabel.font = UIFont.systemFont(ofSize: 10)
        calllabel.textColor = UIColor.systemBlue
        calllabel.text = "call"
        return calllabel
    }()
    
    var secondeview: UIView = {
        let secondeview = UIView()
        secondeview.translatesAutoresizingMaskIntoConstraints=false
        secondeview.backgroundColor = UIColor.white
        secondeview.layer.cornerRadius = 8
        return secondeview
    }()
    
    var vidiconimage: UIImageView = {
        let vidiconimage = UIImageView()
        vidiconimage.translatesAutoresizingMaskIntoConstraints=false
        vidiconimage.image = UIImage(named: "vidicon_image")
        return vidiconimage
    }()
    
    var videolabel: UILabel = {
        let videolabel = UILabel()
        videolabel.translatesAutoresizingMaskIntoConstraints=false
        videolabel.font = UIFont.systemFont(ofSize: 10)
        videolabel.textColor = UIColor.systemBlue
        videolabel.text = "video"
        return videolabel
    }()
    
    var thidthview: UIView = {
        let thidthview = UIView()
        thidthview.translatesAutoresizingMaskIntoConstraints=false
        thidthview.backgroundColor = UIColor.white
        thidthview.layer.cornerRadius = 8
        return thidthview
    }()
    
    var notificationimage: UIImageView = {
        let notificationimge = UIImageView()
        notificationimge.translatesAutoresizingMaskIntoConstraints=false
        notificationimge.image = UIImage(named: "notification_image")
        return notificationimge
    }()
    
    var mutelabel: UILabel = {
        let mutelabel = UILabel()
        mutelabel.translatesAutoresizingMaskIntoConstraints=false
        mutelabel.font = UIFont.systemFont(ofSize: 10)
        mutelabel.textColor = UIColor.systemBlue
        mutelabel.text = "mute"
        return mutelabel
    }()
    
    var fourthview: UIView = {
        let fourthview = UIView()
        fourthview.translatesAutoresizingMaskIntoConstraints=false
        fourthview.backgroundColor = UIColor.white
        fourthview.layer.cornerRadius = 8
        return fourthview
    }()
    
    var searchimage: UIImageView = {
        let searchimage = UIImageView()
        searchimage.translatesAutoresizingMaskIntoConstraints=false
        searchimage.image = UIImage(named: "search_imagee")
        return searchimage
    }()
    
    var alertlabel: UILabel = {
        let alertlabel = UILabel()
        alertlabel.translatesAutoresizingMaskIntoConstraints=false
        alertlabel.font = UIFont.systemFont(ofSize: 10)
        alertlabel.textColor = UIColor.systemBlue
        alertlabel.text = "search"
        return alertlabel
    }()
    
    var fifthview: UIView = {
        let fifthview = UIView()
        fifthview.translatesAutoresizingMaskIntoConstraints=false
        fifthview.backgroundColor = UIColor.white
        fifthview.layer.cornerRadius = 8
        return fifthview
    }()
    
    var moreimage: UIImageView = {
        let moreimage = UIImageView()
        moreimage.translatesAutoresizingMaskIntoConstraints=false
        moreimage.image = UIImage(named: "more_image")
        return moreimage
    }()
    
    var lastlabel: UILabel = {
        let lastlabel = UILabel()
        lastlabel.translatesAutoresizingMaskIntoConstraints=false
        lastlabel.font = UIFont.systemFont(ofSize: 10)
        lastlabel.textColor = UIColor.systemBlue
        lastlabel.text = "more"
        return lastlabel
    }()
    
    var sixthview: UIView = {
        let sixthview = UIView()
        sixthview.translatesAutoresizingMaskIntoConstraints=false
        sixthview.backgroundColor = UIColor.white
        sixthview.layer.cornerRadius = 10
        return sixthview
    }()
    
    var mobilelabel: UILabel = {
        let mobilelabel = UILabel()
        mobilelabel.translatesAutoresizingMaskIntoConstraints=false
        mobilelabel.font = UIFont.systemFont(ofSize: 15)
        mobilelabel.textColor = UIColor.black
        mobilelabel.text = "mobile"
        return mobilelabel
    }()
    
    var numberlabel: UILabel = {
        let numberlabel = UILabel()
        numberlabel.translatesAutoresizingMaskIntoConstraints=false
        numberlabel.font = UIFont.systemFont(ofSize: 18)
        numberlabel.textColor = UIColor.systemBlue
        numberlabel.text = "+998 93 411 15 99"
        return numberlabel
    }()
    
    var cupview: UIView = {
        let cupview = UIView()
        cupview.translatesAutoresizingMaskIntoConstraints=false
        cupview.backgroundColor = UIColor.systemGray5
        return cupview
    }()
    
    var userlabel: UILabel = {
        let userlabel = UILabel()
        userlabel.translatesAutoresizingMaskIntoConstraints=false
        userlabel.font = UIFont.systemFont(ofSize: 15)
        userlabel.textColor = UIColor.black
        userlabel.text = "username"
        return userlabel
    }()
    
    var namelabel: UILabel = {
        let namelabel = UILabel()
        namelabel.translatesAutoresizingMaskIntoConstraints=false
        namelabel.font = UIFont.systemFont(ofSize: 18)
        namelabel.textColor = UIColor.systemBlue
        namelabel.text = "@Hack_150299"
        return namelabel
    }()
    
    var qrimage: UIImageView = {
        let qrimage = UIImageView()
        qrimage.translatesAutoresizingMaskIntoConstraints=false
        qrimage.image = UIImage(named: "qr_code_image")
        return qrimage
    }()
    
    var bookview: UIView = {
        let bookview = UIView()
        bookview.translatesAutoresizingMaskIntoConstraints=false
        bookview.backgroundColor = UIColor.systemGray5
        return bookview
    }()
    
    var biolabel: UILabel = {
        let biolabel = UILabel()
        biolabel.translatesAutoresizingMaskIntoConstraints=false
        biolabel.font = UIFont.systemFont(ofSize: 15)
        biolabel.textColor = UIColor.black
        biolabel.text = "bio"
        return biolabel
    }()
    
    var textlabel: UILabel = {
        let textlabel = UILabel()
        textlabel.translatesAutoresizingMaskIntoConstraints=false
        textlabel.font = UIFont.systemFont(ofSize: 18)
        textlabel.textColor = UIColor.black
        textlabel.text = "Sabir qil IN SHA OLLOH hamsi yahshi boladi AL SABUR ☝️☝️☝️ 😊"
        textlabel.numberOfLines = 4
        return textlabel
    }()
    
    var timelabel: UILabel = {
        let timelabel = UILabel()
        timelabel.translatesAutoresizingMaskIntoConstraints=false
        timelabel.font = UIFont.systemFont(ofSize: 17)
        timelabel.textColor = UIColor.white
        timelabel.text = "last seen recently"
        return timelabel
    }()
    
    var runview: UIView = {
        let runview = UIView()
        runview.translatesAutoresizingMaskIntoConstraints=false
        runview.backgroundColor = UIColor.white
        return runview
    }()
    
    var medialabel: UILabel = {
        let medialabel = UILabel()
        medialabel.translatesAutoresizingMaskIntoConstraints=false
        medialabel.font = UIFont.systemFont(ofSize: 18)
        medialabel.textColor = UIColor.systemBlue
        medialabel.text = "Media"
        return medialabel
    }()
    
    var fileslabel: UILabel = {
        let fileslabel = UILabel()
        fileslabel.translatesAutoresizingMaskIntoConstraints=false
        fileslabel.font = UIFont.systemFont(ofSize: 18)
        fileslabel.textColor = UIColor.systemGray
        fileslabel.text = "Files"
        return fileslabel
    }()
    
    
    var linklabel: UILabel = {
        let linklabel = UILabel()
        linklabel.translatesAutoresizingMaskIntoConstraints=false
        linklabel.font = UIFont.systemFont(ofSize: 18)
        linklabel.textColor = UIColor.systemGray
        linklabel.text = "Links"
        return linklabel
    }()
    
    var musiclabel: UILabel = {
        let musiclabel = UILabel()
        musiclabel.translatesAutoresizingMaskIntoConstraints=false
        musiclabel.font = UIFont.systemFont(ofSize: 18)
        musiclabel.textColor = UIColor.systemGray
        musiclabel.text = "Music"
        return musiclabel
    }()
    
    var customeview: UIView = {
        let customeview = UIView()
        customeview.translatesAutoresizingMaskIntoConstraints=false
        customeview.backgroundColor = UIColor.white
        return customeview
    }()
    
    var khabibimage: UIImageView = {
        let khabibimage = UIImageView()
        khabibimage.translatesAutoresizingMaskIntoConstraints=false
        khabibimage.image = UIImage(named: "KHabib_image")
        return khabibimage
    }()
    
    var musulmanimage: UIImageView = {
        let musulmanimage = UIImageView()
        musulmanimage.translatesAutoresizingMaskIntoConstraints=false
        musulmanimage.image = UIImage(named: "musulman_image")
        return musulmanimage
    }()
    
    var famlyimage: UIImageView = {
        let famlyimage = UIImageView()
        famlyimage.translatesAutoresizingMaskIntoConstraints=false
        famlyimage.image = UIImage(named: "famly_image")
        return famlyimage
    }()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor = .systemGray5
        view.addSubview(scrollView)
        scrollView.addSubview(homeview)
        homeview.frame = scrollView.bounds
        
//        navigationController?.navigationBar.backgroundColor = UIColor.clear
        setAnchors()
    }
    
  
    
    }
    



extension NextPageViewController{
    func setAnchors() {
        
        let rieghtlabel = UILabel()
        rieghtlabel.translatesAutoresizingMaskIntoConstraints=false
        rieghtlabel.textColor = UIColor.systemBlue
        rieghtlabel.font = UIFont.systemFont(ofSize: 20)
        rieghtlabel.text = "Edit"
        let barButtonItem = UIBarButtonItem(customView:rieghtlabel)
        self.navigationItem.rightBarButtonItem = barButtonItem
        
        homeview.addSubview(babyimage)
        babyimage.topAnchor.constraint(equalTo: homeview.topAnchor,constant: 0).isActive=true
        babyimage.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 0).isActive=true
        babyimage.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -0).isActive=true
        babyimage.heightAnchor.constraint(equalToConstant: 400).isActive=true
        
        babyimage.addSubview(weblabel)
        weblabel.bottomAnchor.constraint(equalTo: babyimage.bottomAnchor,constant: -40).isActive=true
        weblabel.leftAnchor.constraint(equalTo: babyimage.leftAnchor,constant: 15).isActive=true
        
        babyimage.addSubview(timelabel)
        timelabel.topAnchor.constraint(equalTo: weblabel.bottomAnchor,constant: 3).isActive=true
        timelabel.leftAnchor.constraint(equalTo: babyimage.leftAnchor,constant: 15).isActive=true
        
        homeview.addSubview(firstview)
        firstview.topAnchor.constraint(equalTo: babyimage.bottomAnchor,constant: 25).isActive=true
        firstview.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 20).isActive=true
        firstview.heightAnchor.constraint(equalToConstant: 55).isActive=true
        firstview.widthAnchor.constraint(equalToConstant: 55).isActive=true
        
        firstview.addSubview(phoneimage)
        phoneimage.topAnchor.constraint(equalTo: firstview.topAnchor,constant: 8).isActive=true
        phoneimage.centerXAnchor.constraint(equalTo: firstview.centerXAnchor).isActive=true
        
        firstview.addSubview(calllabel)
        calllabel.topAnchor.constraint(equalTo: phoneimage.bottomAnchor,constant: 2).isActive=true
        calllabel.centerXAnchor.constraint(equalTo: firstview.centerXAnchor).isActive=true
        
        homeview.addSubview(secondeview)
        secondeview.topAnchor.constraint(equalTo: babyimage.bottomAnchor,constant: 25).isActive=true
        secondeview.leftAnchor.constraint(equalTo: firstview.rightAnchor,constant: 15).isActive=true
        secondeview.heightAnchor.constraint(equalToConstant: 55).isActive=true
        secondeview.widthAnchor.constraint(equalToConstant: 55).isActive=true
        
        secondeview.addSubview(vidiconimage)
        vidiconimage.topAnchor.constraint(equalTo: secondeview.topAnchor,constant: 8).isActive=true
        vidiconimage.centerXAnchor.constraint(equalTo: secondeview.centerXAnchor).isActive=true
        
        secondeview.addSubview(videolabel)
        videolabel.topAnchor.constraint(equalTo: vidiconimage.bottomAnchor,constant: 2).isActive=true
        videolabel.centerXAnchor.constraint(equalTo: secondeview.centerXAnchor).isActive=true
        
        homeview.addSubview(thidthview)
        thidthview.topAnchor.constraint(equalTo: babyimage.bottomAnchor,constant: 25).isActive=true
        thidthview.leftAnchor.constraint(equalTo: secondeview.rightAnchor,constant: 15).isActive=true
        thidthview.heightAnchor.constraint(equalToConstant: 55).isActive=true
        thidthview.widthAnchor.constraint(equalToConstant: 55).isActive=true
        
        thidthview.addSubview(notificationimage)
        notificationimage.topAnchor.constraint(equalTo: thidthview.topAnchor,constant: 8).isActive=true
        notificationimage.centerXAnchor.constraint(equalTo: thidthview.centerXAnchor).isActive=true
        
        thidthview.addSubview(mutelabel)
        mutelabel.topAnchor.constraint(equalTo: notificationimage.bottomAnchor,constant: 2).isActive=true
        mutelabel.centerXAnchor.constraint(equalTo: thidthview.centerXAnchor).isActive=true
      
        homeview.addSubview(fifthview)
        fifthview.topAnchor.constraint(equalTo: babyimage.bottomAnchor,constant: 25).isActive=true
        fifthview.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -20).isActive=true
        fifthview.heightAnchor.constraint(equalToConstant: 55).isActive=true
        fifthview.widthAnchor.constraint(equalToConstant: 55).isActive=true
        
        fifthview.addSubview(moreimage)
        moreimage.topAnchor.constraint(equalTo: fifthview.topAnchor,constant: 8).isActive=true
        moreimage.centerXAnchor.constraint(equalTo: fifthview.centerXAnchor).isActive=true
        
        fifthview.addSubview(lastlabel)
        lastlabel.topAnchor.constraint(equalTo: moreimage.bottomAnchor,constant: 2).isActive=true
        lastlabel.centerXAnchor.constraint(equalTo: fifthview.centerXAnchor).isActive=true
        
        homeview.addSubview(fourthview)
        fourthview.topAnchor.constraint(equalTo: babyimage.bottomAnchor,constant: 25).isActive=true
        fourthview.rightAnchor.constraint(equalTo: fifthview.leftAnchor,constant: -15).isActive=true
        fourthview.heightAnchor.constraint(equalToConstant: 55).isActive=true
        fourthview.widthAnchor.constraint(equalToConstant: 55).isActive=true
        
        fourthview.addSubview(searchimage)
        searchimage.topAnchor.constraint(equalTo: fourthview.topAnchor,constant: 8).isActive=true
        searchimage.centerXAnchor.constraint(equalTo: fourthview.centerXAnchor).isActive=true
        
        fourthview.addSubview(alertlabel)
        alertlabel.topAnchor.constraint(equalTo: searchimage.bottomAnchor,constant: 2).isActive=true
        alertlabel.centerXAnchor.constraint(equalTo: fourthview.centerXAnchor).isActive=true
        
        
        homeview.addSubview(sixthview)
        sixthview.topAnchor.constraint(equalTo: firstview.bottomAnchor,constant: 15).isActive=true
        sixthview.leftAnchor.constraint(equalTo: homeview.leftAnchor,constant: 10).isActive=true
        sixthview.rightAnchor.constraint(equalTo: homeview.rightAnchor,constant: -10).isActive=true
        sixthview.heightAnchor.constraint(equalToConstant: 200).isActive=true
        
        sixthview.addSubview(mobilelabel)
        mobilelabel.topAnchor.constraint(equalTo: sixthview.topAnchor,constant: 10).isActive=true
        mobilelabel.leftAnchor.constraint(equalTo: sixthview.leftAnchor,constant: 15).isActive=true
        
        sixthview.addSubview(numberlabel)
        numberlabel.topAnchor.constraint(equalTo: mobilelabel.bottomAnchor,constant: 2).isActive=true
        numberlabel.leftAnchor.constraint(equalTo: sixthview.leftAnchor,constant: 15).isActive=true
        
        sixthview.addSubview(cupview)
        cupview.topAnchor.constraint(equalTo: numberlabel.bottomAnchor,constant: 5).isActive=true
        cupview.leftAnchor.constraint(equalTo: sixthview.leftAnchor,constant: 15).isActive=true
        cupview.rightAnchor.constraint(equalTo: sixthview.rightAnchor,constant: -0).isActive=true
        cupview.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        sixthview.addSubview(userlabel)
        userlabel.topAnchor.constraint(equalTo: cupview.bottomAnchor,constant: 10).isActive=true
        userlabel.leftAnchor.constraint(equalTo: sixthview.leftAnchor,constant: 15).isActive=true
        
        sixthview.addSubview(namelabel)
        namelabel.topAnchor.constraint(equalTo: userlabel.bottomAnchor,constant: 2).isActive=true
        namelabel.leftAnchor.constraint(equalTo: sixthview.leftAnchor,constant: 15).isActive=true
        
        sixthview.addSubview(qrimage)
        qrimage.topAnchor.constraint(equalTo: cupview.bottomAnchor,constant: 20).isActive=true
        qrimage.rightAnchor.constraint(equalTo: sixthview.rightAnchor,constant: -10).isActive=true
        
        sixthview.addSubview(bookview)
        bookview.topAnchor.constraint(equalTo: namelabel.bottomAnchor,constant: 5).isActive=true
        bookview.leftAnchor.constraint(equalTo: sixthview.leftAnchor,constant: 15).isActive=true
        bookview.rightAnchor.constraint(equalTo: sixthview.rightAnchor,constant: -0).isActive=true
        bookview.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        sixthview.addSubview(biolabel)
        biolabel.topAnchor.constraint(equalTo: bookview.bottomAnchor,constant: 10).isActive=true
        biolabel.leftAnchor.constraint(equalTo: sixthview.leftAnchor,constant: 15).isActive=true
        
        sixthview.addSubview(textlabel)
        textlabel.topAnchor.constraint(equalTo: biolabel.bottomAnchor,constant: 2).isActive=true
        textlabel.leftAnchor.constraint(equalTo: sixthview.leftAnchor,constant: 15).isActive=true
        textlabel.rightAnchor.constraint(equalTo: sixthview.rightAnchor,constant: 10).isActive=true
        
        homeview.addSubview(runview)
        runview.topAnchor.constraint(equalTo: sixthview.bottomAnchor,constant: 20).isActive=true
        runview.leftAnchor.constraint(equalTo: homeview.leftAnchor).isActive=true
        runview.rightAnchor.constraint(equalTo: homeview.rightAnchor).isActive=true
        runview.heightAnchor.constraint(equalToConstant: 50).isActive=true
        
        runview.addSubview(medialabel)
        medialabel.topAnchor.constraint(equalTo: runview.topAnchor,constant: 15).isActive=true
        medialabel.leftAnchor.constraint(equalTo: runview.leftAnchor,constant: 40).isActive=true
        
        runview.addSubview(fileslabel)
        fileslabel.topAnchor.constraint(equalTo: runview.topAnchor,constant: 15).isActive=true
        fileslabel.leftAnchor.constraint(equalTo: medialabel.rightAnchor,constant: 40).isActive=true
        
        runview.addSubview(linklabel)
        linklabel.topAnchor.constraint(equalTo: runview.topAnchor,constant: 15).isActive=true
        linklabel.rightAnchor.constraint(equalTo: runview.rightAnchor,constant: -40).isActive=true
        
        runview.addSubview(musiclabel)
        musiclabel.topAnchor.constraint(equalTo: runview.topAnchor,constant: 15).isActive=true
        musiclabel.rightAnchor.constraint(equalTo: linklabel.leftAnchor,constant: -40).isActive=true
        
        homeview.addSubview(customeview)
        customeview.topAnchor.constraint(equalTo: runview.bottomAnchor,constant: 1).isActive=true
        customeview.leftAnchor.constraint(equalTo: homeview.leftAnchor).isActive=true
        customeview.rightAnchor.constraint(equalTo: homeview.rightAnchor).isActive=true
        customeview.heightAnchor.constraint(equalToConstant: 400).isActive=true
        
        customeview.addSubview(khabibimage)
        khabibimage.topAnchor.constraint(equalTo: customeview.topAnchor,constant: 1).isActive=true
        khabibimage.leftAnchor.constraint(equalTo: customeview.leftAnchor,constant: 0).isActive=true
        khabibimage.heightAnchor.constraint(equalToConstant: 130).isActive=true
        khabibimage.widthAnchor.constraint(equalToConstant: 122).isActive=true
        
        customeview.addSubview(famlyimage)
        famlyimage.topAnchor.constraint(equalTo: customeview.topAnchor,constant: 1).isActive=true
        famlyimage.rightAnchor.constraint(equalTo: customeview.rightAnchor,constant: -0).isActive=true
        famlyimage.heightAnchor.constraint(equalToConstant: 130).isActive=true
        famlyimage.widthAnchor.constraint(equalToConstant: 122).isActive=true
        
        customeview.addSubview(musulmanimage)
        musulmanimage.topAnchor.constraint(equalTo: customeview.topAnchor,constant: 1).isActive=true
        musulmanimage.leftAnchor.constraint(equalTo: khabibimage.rightAnchor,constant: 1).isActive=true
        musulmanimage.rightAnchor.constraint(equalTo: famlyimage.leftAnchor,constant: -1).isActive=true
        musulmanimage.heightAnchor.constraint(equalToConstant: 130).isActive=true
        
        
        
    }
}

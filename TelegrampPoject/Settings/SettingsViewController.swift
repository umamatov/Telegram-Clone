//
//  SettingsViewController.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 24/03/22.
//

import UIKit

class SettingsViewController: UIViewController {

    
    let scrollView: UIScrollView = {
        var scrollView = UIScrollView()
        let screensize: CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        let screenHeigth = screensize.height
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 120, width: screenWidth, height: screenHeigth))
        scrollView.contentSize = CGSize(width: screenWidth, height: 1000)
        return scrollView
    }()
    
    var homeview: UIView = {
        let homeview = UIView()
        return homeview
    }()
    
    var editlabel: UILabel = {
        let editlabel = UILabel()
        editlabel.translatesAutoresizingMaskIntoConstraints=false
        editlabel.font = UIFont.systemFont(ofSize: 18)
        editlabel.textColor = UIColor.blue
        editlabel.text = ""
        return editlabel
    }()
    
    var maniamge: UIImageView = {
        let manimage = UIImageView()
        manimage.translatesAutoresizingMaskIntoConstraints=false
        manimage.image = UIImage(named: "baby_image")
        manimage.layer.cornerRadius = 50
        manimage.layer.masksToBounds = false
        manimage.clipsToBounds = true
        return manimage
    }()
    
    var namelabel: UILabel = {
        let namelabel = UILabel()
        namelabel.translatesAutoresizingMaskIntoConstraints=false
        namelabel.font = UIFont.systemFont(ofSize: 30)
        namelabel.textColor = UIColor.black
        namelabel.text = "⭐︎☹︎"
        return namelabel
    }()
    
    var numberlabel: UILabel = {
        let numberlabel = UILabel()
        numberlabel.translatesAutoresizingMaskIntoConstraints=false
        numberlabel.font = UIFont.systemFont(ofSize: 18)
        numberlabel.textColor = UIColor.systemGray
        numberlabel.text = "+ 998 93 411 15 99"
        return numberlabel
    }()
    
    var usernamebtn: UIButton = {
        let usernamebtn = UIButton()
        usernamebtn.translatesAutoresizingMaskIntoConstraints=false
        usernamebtn.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        usernamebtn.layer.cornerRadius = 30
        usernamebtn.layer.masksToBounds = false
        usernamebtn.backgroundColor = UIColor.white
        usernamebtn.setTitleColor(UIColor.blue, for: .normal)
        usernamebtn.setTitle("@ Set Username", for: .normal)
        usernamebtn.titleEdgeInsets=UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 180)
        usernamebtn.addTarget(self, action: #selector(buttonTaped), for: .touchUpInside)
        return usernamebtn
    }()
    
    var setview: UIView = {
        let setview = UIView()
        setview.translatesAutoresizingMaskIntoConstraints=false
        setview.layer.cornerRadius = 10
        setview.backgroundColor = UIColor.white
        return setview
    }()
    
    var savedimage: UIImageView = {
        let savedimage = UIImageView()
        savedimage.translatesAutoresizingMaskIntoConstraints=false
        savedimage.layer.cornerRadius = 15
        savedimage.layer.masksToBounds = false
        savedimage.image = UIImage(named: "seved_image")
        return savedimage
    }()
    
    var messagebtn: UIButton = {
        let messagebtn = UIButton()
        messagebtn.translatesAutoresizingMaskIntoConstraints=false
        messagebtn.setTitle("Saved Messages", for: .normal)
        messagebtn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        messagebtn.setTitleColor(UIColor.black, for: .normal)
        return messagebtn
    }()
    
    var rieghtimage: UIImageView = {
        let rieghtimage = UIImageView()
        rieghtimage.translatesAutoresizingMaskIntoConstraints=false
        rieghtimage.image = UIImage(named: "rieght_image")
        return rieghtimage
    }()
    
    var lineview: UIView = {
        let lineview = UIView()
        lineview.translatesAutoresizingMaskIntoConstraints=false
        lineview.backgroundColor = UIColor(rgb: 0xF6F7F8)
        return lineview
    }()
    
    var colorview: UIView = {
        let colorview = UIView()
        colorview.translatesAutoresizingMaskIntoConstraints=false
        colorview.backgroundColor = UIColor(rgb: 0x7ED321)
        colorview.layer.cornerRadius = 12
        return colorview
    }()
    
    var phoneimage: UIImageView = {
        let phoneimage = UIImageView()
        phoneimage.translatesAutoresizingMaskIntoConstraints=false
        phoneimage.image = UIImage(named: "phone_image")
        return phoneimage
    }()
    
    var callbtn: UIButton = {
        let callbtn = UIButton()
        callbtn.translatesAutoresizingMaskIntoConstraints=false
        callbtn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        callbtn.setTitleColor(UIColor.black, for: .normal)
        callbtn.setTitle("Recent Calls", for: .normal)
        callbtn.addTarget(self, action: #selector(firsttapped), for: .touchUpInside)
        return callbtn
    }()
    
    var first: UIImageView = {
        let first = UIImageView()
        first.translatesAutoresizingMaskIntoConstraints=false
        first.image = UIImage(named: "rieght_image")
        return first
    }()
    
    var chizview: UIView = {
        let chizview = UIView()
        chizview.translatesAutoresizingMaskIntoConstraints=false
        chizview.backgroundColor = UIColor(rgb: 0xF6F7F8)
        return chizview
    }()
    
    var yellowview: UIView = {
        let yellowview = UIView()
        yellowview.translatesAutoresizingMaskIntoConstraints=false
        yellowview.backgroundColor = UIColor.orange
        yellowview.layer.cornerRadius = 12
        return yellowview
    }()
    
    var deviceimage: UIImageView = {
        let deviceimage = UIImageView()
        deviceimage.translatesAutoresizingMaskIntoConstraints=false
        deviceimage.image = UIImage(named: "device_image")
        return deviceimage
    }()
    
    var devicesbtn: UIButton = {
        let devicesbtn = UIButton()
        devicesbtn.translatesAutoresizingMaskIntoConstraints=false
        devicesbtn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        devicesbtn.setTitleColor(UIColor.black, for: .normal)
        devicesbtn.setTitle("Devices", for: .normal)
        devicesbtn.addTarget(self, action: #selector(secondetapped), for: .touchUpInside)
        return devicesbtn
    }()
    
    var second: UIImageView = {
        let second = UIImageView()
        second.translatesAutoresizingMaskIntoConstraints=false
        second.image = UIImage(named: "rieght_image")
        return second
    }()
    
    var cubicview: UIView = {
        let cubicview = UIView()
        cubicview.translatesAutoresizingMaskIntoConstraints=false
        cubicview.backgroundColor = UIColor(rgb: 0xF6F7F8)
        return cubicview
    }()
    
    var pinkview: UIView = {
        let pinkview = UIView()
        pinkview.translatesAutoresizingMaskIntoConstraints=false
        pinkview.backgroundColor = UIColor.cyan
        pinkview.layer.cornerRadius = 12
        return pinkview
    }()
    
    var folderimage: UIImageView = {
        let folderimage = UIImageView()
        folderimage.translatesAutoresizingMaskIntoConstraints=false
        folderimage.image = UIImage(named: "folder_image")
        return folderimage
    }()
    
    var chatbtn: UIButton = {
        let chatbtn = UIButton()
        chatbtn.translatesAutoresizingMaskIntoConstraints=false
        chatbtn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        chatbtn.setTitleColor(.black, for: .normal)
        chatbtn.setTitle("Chat Folders", for: .normal)
        chatbtn.addTarget(self, action: #selector(ChatfloderTapped), for: .touchUpInside)
        return chatbtn
    }()
    
    var thorth: UIImageView = {
        let thorth = UIImageView()
        thorth.translatesAutoresizingMaskIntoConstraints=false
        thorth.image = UIImage(named: "rieght_image")
        return thorth
        }()
    
    var soundview: UIView = {
        let soundview = UIView()
        soundview.translatesAutoresizingMaskIntoConstraints=false
        soundview.backgroundColor = UIColor.white
        soundview.layer.cornerRadius = 10
        return soundview
    }()
    
    var redview: UIView = {
        let redview = UIView()
        redview.translatesAutoresizingMaskIntoConstraints=false
        redview.backgroundColor = UIColor.red
        redview.layer.cornerRadius = 12
        return redview
    }()
    
    var alarmimage: UIImageView = {
        let alarmimage = UIImageView()
        alarmimage.translatesAutoresizingMaskIntoConstraints=false
        alarmimage.image = UIImage(named: "alarm_image")
        return alarmimage
    }()
    
    var notificationBtn: UIButton = {
        let notificationBtn = UIButton()
        notificationBtn.translatesAutoresizingMaskIntoConstraints=false
        notificationBtn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        notificationBtn.setTitleColor(.black, for: .normal)
        notificationBtn.setTitle("Notifications and Sounds", for: .normal)
        notificationBtn.addTarget(self, action: #selector(notificationBtnTapped), for: .touchUpInside)
        return notificationBtn
    }()
    
    var fourth: UIImageView = {
        let fourth = UIImageView()
        fourth.translatesAutoresizingMaskIntoConstraints=false
        fourth.image = UIImage(named: "rieght_image")
        return fourth
    }()
    
    var iphonview: UIView = {
        let iphonview = UIView()
        iphonview.translatesAutoresizingMaskIntoConstraints=false
        iphonview.backgroundColor = UIColor(rgb: 0xF6F7F8)
        return iphonview
    }()
    
    var privacy: UIView = {
        let privacy = UIView()
        privacy.translatesAutoresizingMaskIntoConstraints=false
        privacy.backgroundColor = UIColor(rgb: 0xC4C4C4)
        privacy.layer.cornerRadius = 12
        return privacy
    }()
    
    var locimage: UIImageView = {
        let locimage = UIImageView()
        locimage.translatesAutoresizingMaskIntoConstraints=false
        locimage.image = UIImage(named: "lock_image")
        return locimage
    }()
    
    var securitylabel: UILabel = {
        let securotylabel = UILabel()
        securotylabel.translatesAutoresizingMaskIntoConstraints=false
        securotylabel.font = UIFont.systemFont(ofSize: 18)
        securotylabel.textColor = UIColor.black
        securotylabel.text = "Privacy and Security"
        return securotylabel
    }()
    
    var fifth: UIImageView = {
        let fifth = UIImageView()
        fifth.translatesAutoresizingMaskIntoConstraints=false
        fifth.image = UIImage(named: "rieght_image")
        return fifth
    }()
    
    var manview: UIView = {
        let manview = UIView()
        manview.translatesAutoresizingMaskIntoConstraints=false
        manview.backgroundColor = UIColor(rgb: 0xF6F7F8)
        return manview
    }()
    
    var storage: UIView = {
        let storage = UIView()
        storage.translatesAutoresizingMaskIntoConstraints=false
        storage.backgroundColor = UIColor(rgb: 0x7ED321)
        storage.layer.cornerRadius = 12
        return storage
    }()
    
    var coinimage: UIImageView = {
        let coinimage = UIImageView()
        coinimage.translatesAutoresizingMaskIntoConstraints=false
        coinimage.image = UIImage(named: "coin_image")
        return coinimage
    }()
    
    var datalabel: UILabel = {
        let datalabel = UILabel()
        datalabel.translatesAutoresizingMaskIntoConstraints=false
        datalabel.font = UIFont.systemFont(ofSize: 18)
        datalabel.textColor = UIColor.black
        datalabel.text = "Data and Storage"
        return datalabel
    }()
    
    var sixth: UIImageView = {
        let sixth = UIImageView()
        sixth.translatesAutoresizingMaskIntoConstraints=false
        sixth.image = UIImage(named: "rieght_image")
        return sixth
    }()
    
    var cupview: UIView = {
        let cupview = UIView()
        cupview.translatesAutoresizingMaskIntoConstraints=false
        cupview.backgroundColor = UIColor(rgb: 0xF6F7F8)
        return cupview
    }()
    
    var systemblue: UIView = {
        let systemblue = UIView()
        systemblue.translatesAutoresizingMaskIntoConstraints=false
        systemblue.backgroundColor = UIColor.cyan
        systemblue.layer.cornerRadius = 12
        return systemblue
    }()
    
    var contrastimage: UIImageView = {
        let contrastimage = UIImageView()
        contrastimage.translatesAutoresizingMaskIntoConstraints=false
        contrastimage.image = UIImage(named: "contrast_image")
        return contrastimage
    }()
    
    var appearancelabel: UILabel = {
        let appearancelabe = UILabel()
        appearancelabe.translatesAutoresizingMaskIntoConstraints=false
        appearancelabe.font = UIFont.systemFont(ofSize: 18)
        appearancelabe.textColor = UIColor.black
        appearancelabe.text = "Appearance"
        return appearancelabe
    }()
    
    var seventth: UIImageView = {
        let seventth = UIImageView()
        seventth.translatesAutoresizingMaskIntoConstraints=false
        seventth.image = UIImage(named: "rieght_image")
        return seventth
    }()
    
    var tea: UIView = {
        let tea = UIView()
        tea.translatesAutoresizingMaskIntoConstraints=false
        tea.backgroundColor = UIColor(rgb: 0xF6F7F8)
        return tea
    }()
    
    var dark: UIView = {
        let dark = UIView()
        dark.translatesAutoresizingMaskIntoConstraints=false
        dark.backgroundColor = UIColor.purple
        dark.layer.cornerRadius = 12
        return dark
    }()
    
    var globalimage: UIImageView = {
        let globalimage = UIImageView()
        globalimage.translatesAutoresizingMaskIntoConstraints=false
        globalimage.image = UIImage(named: "global_image")
        return globalimage
    }()
    
    var languagelabel: UILabel = {
        let languagelabel = UILabel()
        languagelabel.translatesAutoresizingMaskIntoConstraints=false
        languagelabel.font = UIFont.systemFont(ofSize: 18)
        languagelabel.textColor = UIColor.black
        languagelabel.text = "Language"
        return languagelabel
    }()
    
    var eghtth: UIImageView = {
        let eghtth = UIImageView()
        eghtth.translatesAutoresizingMaskIntoConstraints=false
        eghtth.image = UIImage(named: "rieght_image")
        return eghtth
    }()
    
    var englishlabel: UILabel = {
        let englishlabel = UILabel()
        englishlabel.translatesAutoresizingMaskIntoConstraints=false
        englishlabel.font = UIFont.systemFont(ofSize: 18)
        englishlabel.textColor = UIColor.systemGray
        englishlabel.text = "English"
        return englishlabel
    }()
    
    var cape: UIView = {
        let cape = UIView()
        cape.translatesAutoresizingMaskIntoConstraints=false
        cape.backgroundColor = UIColor(rgb: 0xF6F7F8)
        return cape
    }()
    
    var orange: UIView = {
        let orange = UIView()
        orange.translatesAutoresizingMaskIntoConstraints=false
        orange.backgroundColor = UIColor.orange
        orange.layer.cornerRadius = 12
        return orange
    }()
    
    var finderimage: UIImageView = {
        let finderimage = UIImageView()
        finderimage.translatesAutoresizingMaskIntoConstraints=false
        finderimage.image = UIImage(named: "finder_image")
        return finderimage
    }()
    
    var stickerlabel: UILabel = {
        let stickerlabel = UILabel()
        stickerlabel.translatesAutoresizingMaskIntoConstraints=false
        stickerlabel.font = UIFont.systemFont(ofSize: 18)
        stickerlabel.textColor = UIColor.black
        stickerlabel.text = "Stickers and Emoji"
        return stickerlabel
    }()
    
    var nineth: UIImageView = {
        let nineth = UIImageView()
        nineth.translatesAutoresizingMaskIntoConstraints=false
        nineth.image = UIImage(named: "rieght_image")
        return nineth
    }()
    
    var askview: UIView = {
        let askview = UIView()
        askview.translatesAutoresizingMaskIntoConstraints=false
        askview.backgroundColor = UIColor.white
        askview.layer.cornerRadius = 10
        return askview
    }()
    
    var nexview: UIView = {
        let nextview = UIView()
        nextview.translatesAutoresizingMaskIntoConstraints=false
        nextview.backgroundColor = UIColor.orange
        nextview.layer.cornerRadius = 12
        return nextview
    }()
    
    var wechatimage: UIImageView = {
        let wechatimage = UIImageView()
        wechatimage.translatesAutoresizingMaskIntoConstraints=false
        wechatimage.image = UIImage(named: "wechat_image")
        return wechatimage
    }()
    
    var questionlabel: UILabel = {
        let questionlabel = UILabel()
        questionlabel.translatesAutoresizingMaskIntoConstraints=false
        questionlabel.font = UIFont.systemFont(ofSize: 18)
        questionlabel.textColor = UIColor.black
        questionlabel.text = "Ask a Question"
        return questionlabel
    }()
    
    var tenth: UIImageView = {
        let tenth = UIImageView()
        tenth.translatesAutoresizingMaskIntoConstraints=false
        tenth.image = UIImage(named: "rieght_image")
        return tenth
    }()
    
    var funy: UIView = {
        let funy = UIView()
        funy.translatesAutoresizingMaskIntoConstraints=false
        funy.backgroundColor = UIColor(rgb: 0xF6F7F8)
        return funy
    }()
    
    var cyan: UIView = {
        let cyan = UIView()
        cyan.translatesAutoresizingMaskIntoConstraints=false
        cyan.backgroundColor = UIColor.cyan
        cyan.layer.cornerRadius = 12
        return cyan
    }()
    
    var faqimage: UIImageView = {
        let faqimage = UIImageView()
        faqimage.translatesAutoresizingMaskIntoConstraints=false
        faqimage.image = UIImage(named: "question_image")
        return faqimage
    }()
    
    var telegramlabel: UILabel = {
        let telegramlabel = UILabel()
        telegramlabel.translatesAutoresizingMaskIntoConstraints=false
        telegramlabel.font = UIFont.systemFont(ofSize: 18)
        telegramlabel.textColor = UIColor.black
        telegramlabel.text = "Telegram FAQ"
        return telegramlabel
    }()
    
    var elevnth: UIImageView = {
        let elevnth = UIImageView()
        elevnth.translatesAutoresizingMaskIntoConstraints=false
        elevnth.image = UIImage(named: "rieght_image")
        return elevnth
    }()
    
    var zoomview: UIView = {
        let zoomview = UIView()
        zoomview.translatesAutoresizingMaskIntoConstraints=false
        zoomview.backgroundColor = UIColor(rgb: 0xF6F7F8)
        return zoomview
    }()
    
    var nyellowview: UIView = {
        let nyellowview = UIView()
        nyellowview.translatesAutoresizingMaskIntoConstraints=false
        nyellowview.backgroundColor = UIColor.systemYellow
        nyellowview.layer.cornerRadius = 12
        return nyellowview
    }()
    
    var lightimage: UIImageView = {
        let lightimage = UIImageView()
        lightimage.translatesAutoresizingMaskIntoConstraints=false
        lightimage.image = UIImage(named: "lightbulb_image")
        return lightimage
    }()
    
    var featureslabel: UILabel = {
        let featureslabel = UILabel()
        featureslabel.translatesAutoresizingMaskIntoConstraints=false
        featureslabel.font = UIFont.systemFont(ofSize: 18)
        featureslabel.textColor = UIColor.black
        featureslabel.text = "Telegram Features"
        return featureslabel
    }()
    
    var last: UIImageView = {
        let last = UIImageView()
        last.translatesAutoresizingMaskIntoConstraints=false
        last.image = UIImage(named: "rieght_image")
        return last
    }()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor(rgb: 0xFFEEF0F5)
        navigationController?.tabBarController?.tabBar.backgroundColor=UIColor.white
        view.addSubview(scrollView)
        scrollView.addSubview(homeview)
        homeview.frame = scrollView.bounds
//        homeview.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/4).isActive=true
        let myrightImage = UIImage(named: "search_image")?.withRenderingMode(.alwaysOriginal)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: myrightImage, style: .plain, target: self, action: #selector(addTapped))

        settingAnchors()
        
        
        
        
        
        
    }
    @objc func notificationBtnTapped(){
       let controller = NotificationViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc func ChatfloderTapped(){
        let controller = ChatTappedViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
    
    @objc func secondetapped(){
        let controller = SecondeViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc func firsttapped(){
        let controller = FirstViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc func fortapped(){
        let controller = ForTAppedViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
   
    @objc func addTapped(){
        navigationController?.popViewController(animated: true)
    }
    
    
    @objc func buttonTaped(_ sender:UIButton){
    let viewControllerToPresent = BotomViewController()
    showMyViewControllerInACustomizedSheet(vc: viewControllerToPresent)
}
    override func viewWillAppear(_ animated: Bool) {
        
        self.tabBarController?.tabBar.isHidden=false
    }
    

    }



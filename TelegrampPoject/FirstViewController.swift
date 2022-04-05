//
//  FirstViewController.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 02/04/22.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let tableView = UITableView()
   
    let scrollView: UIScrollView = {
        var scrollView = UIScrollView()
        let screensize: CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        let screenHeigth = screensize.height
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 10, width: screenWidth, height: screenHeigth))
        scrollView.contentSize = CGSize(width: screenWidth, height: 700)
        return scrollView
    }()
    
    var homeview: UIView = {
        let homeview = UIView()
        return homeview
    }()
    
    var firstview: UIView = {
        let firstview = UIView()
        firstview.translatesAutoresizingMaskIntoConstraints=false
        firstview.backgroundColor = UIColor.white
        firstview.layer.cornerRadius = 10
        return firstview
    }()
    
    var textlabel: UILabel = {
        let textlabel = UILabel()
        textlabel.translatesAutoresizingMaskIntoConstraints=false
        textlabel.font = UIFont.systemFont(ofSize: 20)
        textlabel.textColor = UIColor.black
        textlabel.text = "Show Calls Tab"
        return textlabel
    }()
    
    var mySwitch: UISwitch = {
        let mySwitch = UISwitch()
        mySwitch.translatesAutoresizingMaskIntoConstraints=false
        mySwitch.tintColor = .systemGreen
        return mySwitch
    }()
    
    var calllabe: UILabel = {
        let calllabel = UILabel()
        calllabel.translatesAutoresizingMaskIntoConstraints=false
        calllabel.font = UIFont.systemFont(ofSize: 15)
        calllabel.textColor = UIColor.systemGray
        calllabel.text = "A call icon will appear in the tab bar."
        return calllabel
    }()
    
    var customeView: UIView = {
        let customeView = UIView()
        customeView.translatesAutoresizingMaskIntoConstraints=false
        customeView.backgroundColor = .white
        customeView.layer.cornerRadius = 30
        customeView.layer.masksToBounds = false
        customeView.clipsToBounds = true
        return customeView
    }()
   
    var list:[SettingModel]=[]
    var filtered:[SettingModel]=[]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        navigationController?.navigationBar.backgroundColor = UIColor.systemGray5
        self.tabBarController?.tabBar.isHidden=true
        view.backgroundColor = .systemGray5
        scrollView.addSubview(homeview)
        homeview.frame = scrollView.bounds
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        customeView.addSubview(tableView)
        tableView.contentInset=UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
        self.tableView.bounces = true
        
//        scrollView.bounces=false
        

        
        let items = ["All","Missed"]
        let segmentedControl = UISegmentedControl(items: items)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.layer.cornerRadius=5
        segmentedControl.backgroundColor = UIColor.systemGray5
        segmentedControl.tintColor = .white
        segmentedControl.addTarget(self, action: #selector(indexChanged), for: .valueChanged)
          
        navigationItem.titleView = segmentedControl
        
        let rieghtlabel = UILabel()
        rieghtlabel.translatesAutoresizingMaskIntoConstraints=false
        rieghtlabel.textColor = UIColor.systemBlue
        rieghtlabel.font = UIFont.systemFont(ofSize: 20)
        rieghtlabel.text = "Edit"
        let barButtonItem = UIBarButtonItem(customView:rieghtlabel)
        self.navigationItem.rightBarButtonItem = barButtonItem
        
        view.addSubview(firstview)
        firstview.topAnchor.constraint(equalTo: view.topAnchor,constant: 90).isActive=true
        firstview.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 10).isActive=true
        firstview.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -10).isActive=true
        firstview.heightAnchor.constraint(equalToConstant: 50).isActive=true

        firstview.addSubview(textlabel)
        textlabel.topAnchor.constraint(equalTo: firstview.topAnchor,constant: 12).isActive=true
        textlabel.leftAnchor.constraint(equalTo: firstview.leftAnchor,constant: 15).isActive=true

        firstview.addSubview(mySwitch)
        mySwitch.topAnchor.constraint(equalTo: firstview.topAnchor,constant: 10).isActive=true
        mySwitch.rightAnchor.constraint(equalTo: firstview.rightAnchor,constant: -10).isActive=true

        view.addSubview(calllabe)
        calllabe.topAnchor.constraint(equalTo: firstview.bottomAnchor,constant: 10).isActive=true
        calllabe.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 20).isActive=true
       
        view.addSubview(customeView)
        customeView.topAnchor.constraint(equalTo: calllabe.bottomAnchor,constant: 30).isActive=true
        customeView.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 10).isActive=true
        customeView.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -10).isActive=true
        customeView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -5).isActive=true
        customeView.layer.cornerRadius = 10
        
        setSettingModel()
    

    
    }
    
    
    
    
    
     @objc func indexChanged(_ sender: UISegmentedControl) {
         switch sender.selectedSegmentIndex{
         case 0:
             filtered.removeAll()
             filtered=list
             tableView.reloadData()
             break
         case 1:
             filtered.removeAll()
             filtered=list.filter{
                 $0.time=="Missed"
             }
             tableView.reloadData()
             break
         default:
             break
             
         }

     }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = customeView.bounds
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filtered.count
        
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "CallTableViewCell32"
        tableView.register(CallTableViewCell.self, forCellReuseIdentifier: cellId)
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CallTableViewCell
      
        let settingModel = filtered[indexPath.row]
        
        cell.nameLabel.text=settingModel.name
        cell.khabibImage.image=settingModel.image
        cell.incomingLabel.text=settingModel.time
        cell.videoImage.image=settingModel.video
        if(settingModel.time=="Missed"){
            cell.nameLabel.textColor = .red
            
        }else{
            
                cell.nameLabel.textColor = .black
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }

    func setSettingModel(){
        
        
        list.append(SettingModel(image:UIImage(named: "polis_image")!, name: "Jack Hac", time: "Outgoing (9 min)", video: UIImage(named: "video_image-1")))
        
        list.append(SettingModel(image: UIImage(named: "musulman_image")!, name: "Hacker", time:String("Outgoing"), video: UIImage(named: "phone_image-2")))
        
        list.append(SettingModel(image: UIImage(named: "vor_image")!, name: "Jamshid", time: "Outgoing (59 sec)", video: UIImage(named: "video_image-1")))
        
        list.append(SettingModel(image: UIImage(named: "baby_image-1")!, name: "Doston Ergashev",  time: "Outgoing, Incoming", video: UIImage(named: "phone_image-2")))
        
        list.append(SettingModel(image: UIImage(named: "buetuful_image")!, name: "Rasuljon", time: "Missed", video: UIImage(named: "")))
        
        list.append(SettingModel(image: UIImage(named: "KHabib_image")!, name: "KHabib Nurmagedov",  time: "Outgoing (39 min)", video: UIImage(named: "video_image-1")))
        
        list.append(SettingModel(image: UIImage(named: "smile_image")!, name: "Messi", time: "Outgoing", video: UIImage(named: "")))
        
        list.append(SettingModel(image: UIImage(named: "famly_image")!, name: "Jony", time: "Outgoing (30 sec)", video: UIImage(named: "phone_image-2")))
        
        list.append(SettingModel(image: UIImage(named: "man_image-1")!, name: "Hacker", time: "Outgoing, Incoming", video: UIImage(named: "video_image-1")))
        
        list.append(SettingModel(image: UIImage(named: "newyork_image")!, name: "Hacker", time: "Missed", video: UIImage(named: "")))
        
        list.append(SettingModel(image: UIImage(named: "texno_image")!, name: "Hacker",  time: "Missed", video: UIImage(named: "")))
        
        list.append(SettingModel(image: UIImage(named: "baby_image")!, name: "Hacker", time: "Missed", video: UIImage(named: "")))
        
        filtered=list
    }
    
    
}

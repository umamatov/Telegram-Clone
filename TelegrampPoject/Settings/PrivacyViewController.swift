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
        scrollView.contentSize = CGSize(width: screenWidth, height: 2500)
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
        customView.heightAnchor.constraint(equalToConstant: 150).isActive=true
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
        
        
        
        
        
        

        
        
        

       
    }
    

  

}

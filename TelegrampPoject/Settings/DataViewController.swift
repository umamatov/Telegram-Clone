//
//  DataViewController.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 09/04/22.
//

import UIKit

class DataViewController: UIViewController {

    
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
    
    var shortView: UIView = {
        let shortView = UIView()
        shortView.translatesAutoresizingMaskIntoConstraints=false
        shortView.backgroundColor = .white
        shortView.layer.cornerRadius = 30
        return shortView
    }()
    
    var collorView: UIView = {
        let collorView = UIView()
        collorView.translatesAutoresizingMaskIntoConstraints=false
        collorView.backgroundColor = UIColor(rgb: 0xF5831A)
        collorView.layer.cornerRadius = 30
        return collorView
    }()
    
    var pieImage: UIImageView = {
        let pieImage = UIImageView()
        pieImage.translatesAutoresizingMaskIntoConstraints=false
        pieImage.image = UIImage(named: "pie_image")
        return pieImage
    }()
    
    var storageLabel: UILabel = {
        let strorageLabel = UILabel()
        strorageLabel.translatesAutoresizingMaskIntoConstraints=false
        strorageLabel.font = UIFont.systemFont(ofSize: 20)
        strorageLabel.textColor = .black
        strorageLabel.text = "Storage Usage"
        return strorageLabel
    }()
    
    var rightImage: UIImageView = {
        let rightImage = UIImageView()
        rightImage.translatesAutoresizingMaskIntoConstraints=false
        rightImage.image = UIImage(named:  "rieght_image")
        return rightImage
    }()
    
    var lineView: UIView = {
        let lineView = UIView()
        lineView.translatesAutoresizingMaskIntoConstraints=false
        lineView.backgroundColor = .systemGray5
        return lineView
    }()
    
    var purpleView: UIView = {
        let purpleView = UIView()
        purpleView.translatesAutoresizingMaskIntoConstraints=false
        purpleView.backgroundColor = .systemPurple
        purpleView.layer.cornerRadius = 30
        return purpleView
    }()
    
    var barImage: UIImageView = {
        let barImage = UIImageView()
        barImage.translatesAutoresizingMaskIntoConstraints=false
        barImage.image = UIImage(named: "bar_image")
        return barImage
    }()
    
    var networkLabel: UILabel = {
        let networkLabel = UILabel()
        networkLabel.translatesAutoresizingMaskIntoConstraints=false
        networkLabel.font = UIFont.systemFont(ofSize: 20)
        networkLabel.textColor = .black
        networkLabel.text = "Network Usage"
        return networkLabel
    }()
    
    var lefImage: UIImageView = {
        let lefImage = UIImageView()
        lefImage.translatesAutoresizingMaskIntoConstraints=false
        lefImage.image = UIImage(named:  "rieght_image")
        return lefImage
    }()
    
    var mediaLabel: UILabel = {
        let mediaLabel = UILabel()
        mediaLabel.translatesAutoresizingMaskIntoConstraints=false
        mediaLabel.font = UIFont.systemFont(ofSize: 15)
        mediaLabel.textColor = .systemGray
        mediaLabel.text = "AUTOMATIC MEDIA DOWNLOAD"
        return mediaLabel
    }()
    
    var appView: UIView = {
        let appView = UIView()
        appView.translatesAutoresizingMaskIntoConstraints=false
        appView.backgroundColor = .white
        appView.layer.cornerRadius = 30
        return appView
    }()
    
    var greenView: UIView = {
        let greenView = UIView()
        greenView.translatesAutoresizingMaskIntoConstraints=false
        greenView.backgroundColor = .systemGreen
        greenView.layer.cornerRadius = 30
        return greenView
    }()
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        self.tabBarController?.tabBar.isHidden=true
        view.addSubview(scrollView)
        scrollView.addSubview(homeView)
        homeView.frame = scrollView.bounds
        title = "Data and Storage"
        
        homeView.addSubview(shortView)
        shortView.topAnchor.constraint(equalTo: homeView.topAnchor,constant: 10).isActive=true
        shortView.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        shortView.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        shortView.heightAnchor.constraint(equalToConstant: 100).isActive=true
        shortView.layer.cornerRadius = 7
        
        shortView.addSubview(collorView)
        collorView.topAnchor.constraint(equalTo: shortView.topAnchor,constant: 10).isActive=true
        collorView.leftAnchor.constraint(equalTo: shortView.leftAnchor,constant: 10).isActive=true
        collorView.heightAnchor.constraint(equalToConstant: 32).isActive=true
        collorView.widthAnchor.constraint(equalToConstant: 30).isActive=true
        collorView.layer.cornerRadius = 5
        
        collorView.addSubview(pieImage)
        pieImage.topAnchor.constraint(equalTo: collorView.topAnchor,constant: 4).isActive=true
        pieImage.leftAnchor.constraint(equalTo: collorView.leftAnchor,constant: 3).isActive=true
        
        shortView.addSubview(storageLabel)
        storageLabel.topAnchor.constraint(equalTo: shortView.topAnchor,constant: 12).isActive=true
        storageLabel.leftAnchor.constraint(equalTo: collorView.rightAnchor,constant: 10).isActive=true
        
        shortView.addSubview(rightImage)
        rightImage.topAnchor.constraint(equalTo: shortView.topAnchor,constant: 12).isActive=true
        rightImage.rightAnchor.constraint(equalTo: shortView.rightAnchor,constant: -10).isActive=true
        
        shortView.addSubview(lineView)
        lineView.topAnchor.constraint(equalTo: collorView.bottomAnchor,constant: 8).isActive=true
        lineView.leftAnchor.constraint(equalTo: collorView.rightAnchor,constant: 10).isActive=true
        lineView.rightAnchor.constraint(equalTo: shortView.rightAnchor).isActive=true
        lineView.heightAnchor.constraint(equalToConstant: 1).isActive=true
        
        shortView.addSubview(purpleView)
        purpleView.topAnchor.constraint(equalTo: lineView.topAnchor,constant: 8).isActive=true
        purpleView.leftAnchor.constraint(equalTo: shortView.leftAnchor,constant: 10).isActive=true
        purpleView.heightAnchor.constraint(equalToConstant: 32).isActive=true
        purpleView.widthAnchor.constraint(equalToConstant: 30).isActive=true
        purpleView.layer.cornerRadius = 5
        
        purpleView.addSubview(barImage)
        barImage.topAnchor.constraint(equalTo: purpleView.topAnchor,constant: 3.5).isActive=true
        barImage.leftAnchor.constraint(equalTo: purpleView.leftAnchor,constant: 2.7).isActive=true
        
        shortView.addSubview(networkLabel)
        networkLabel.topAnchor.constraint(equalTo: lineView.bottomAnchor,constant: 10).isActive=true
        networkLabel.leftAnchor.constraint(equalTo: purpleView.rightAnchor,constant: 10).isActive=true

        shortView.addSubview(lefImage)
        lefImage.topAnchor.constraint(equalTo: lineView.topAnchor,constant: 12).isActive=true
        lefImage.rightAnchor.constraint(equalTo: shortView.rightAnchor,constant: -10).isActive=true
        
        homeView.addSubview(mediaLabel)
        mediaLabel.topAnchor.constraint(equalTo: shortView.bottomAnchor,constant: 30).isActive=true
        mediaLabel.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 18).isActive=true
        
        homeView.addSubview(appView)
        appView.topAnchor.constraint(equalTo: mediaLabel.bottomAnchor,constant: 10).isActive=true
        appView.leftAnchor.constraint(equalTo: homeView.leftAnchor,constant: 10).isActive=true
        appView.rightAnchor.constraint(equalTo: homeView.rightAnchor,constant: -10).isActive=true
        appView.heightAnchor.constraint(equalToConstant: 180).isActive=true
        appView.layer.cornerRadius = 7
        
        appView.addSubview(greenView)
        greenView.topAnchor.constraint(equalTo: appView.topAnchor,constant: 10).isActive=true
        greenView.leftAnchor.constraint(equalTo: appView.leftAnchor,constant: 10).isActive=true
        greenView.heightAnchor.constraint(equalToConstant: 32).isActive=true
        greenView.widthAnchor.constraint(equalToConstant: 30).isActive=true
        greenView.layer.cornerRadius = 5
        

        
    }
    

   

}

//
//  ViewController.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 24/03/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        didTapButton()
    }

    
    func didTapButton() {
        let tabBarVC = UITabBarController()
        
        
        let vc1 = UINavigationController(rootViewController: ContactsViewController())
        let vc2 = UINavigationController(rootViewController: ChatsViewController())
        let vc3 = UINavigationController(rootViewController: SettingsViewController())
        vc1.title = "Contacts"
        vc2.title = "Chats"
        vc3.title = "Settings"
        tabBarVC.setViewControllers([vc1, vc2, vc3,], animated: false)
        
        guard let items = tabBarVC.tabBar.items else {
            return
        }
        
        let images = ["profile_image", "Chats_image", "Settings_image"]
        
        for x in 0..<items.count {
  //          items[x].badgeValue = "10"
            items[x] .image = UIImage(named: images[x])
        }
        
        
        tabBarVC.modalPresentationStyle = .fullScreen
        tabBarVC.selectedIndex=1
        present(tabBarVC, animated: true)
    }

       
  }
      

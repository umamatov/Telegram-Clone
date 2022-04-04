//
//  TabBar.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 24/03/22.
//

import UIKit

extension UIViewController {
    
    func navibationBar(){
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor=UIColor(rgb: 0xffEEF0F5)
        appearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance=appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        
        let editImage    = UIImage(named: "location")!
        let searchImage  = UIImage(named: "filter")!
        
        let editButton   = UIBarButtonItem(image: editImage,  style: .plain, target: self, action:nil)
        let searchButton = UIBarButtonItem(image: searchImage,  style: .plain, target: self, action:nil)

        navigationItem.rightBarButtonItems = [searchButton,editButton]
      
    }


}

//
//  RegisterCell.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 31/03/22.
//

import UIKit

class RegisterCell: UITableViewCell {
    
    var homeview: UIView = {
        let homeview = UIView()
        homeview.translatesAutoresizingMaskIntoConstraints=false
        homeview.backgroundColor = UIColor.red
        return homeview
    }()
    
    
    override init(style:UITableViewCell.CellStyle, reuseIdentifier: String?) {
             super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(homeview)
        homeview.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive=true
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

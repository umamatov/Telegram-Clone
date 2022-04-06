//
//  PhotoTableCell.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 02/04/22.
//

import UIKit

class PhotoTableCell: UITableViewCell {
    
    
    var musulmanimage: UIImageView = {
        let musulmanimage = UIImageView()
        musulmanimage.translatesAutoresizingMaskIntoConstraints=false
        musulmanimage.layer.cornerRadius = 30
        musulmanimage.layer.masksToBounds=false
        musulmanimage.clipsToBounds=true
        musulmanimage.image = UIImage(named: "musulman_image")
        return musulmanimage
    }()
    
    var khabibimage: UIImageView = {
        let khabibimage = UIImageView()
        khabibimage.translatesAutoresizingMaskIntoConstraints=false
        khabibimage.layer.cornerRadius = 30
        khabibimage.layer.masksToBounds=false
        khabibimage.clipsToBounds=true
        khabibimage.image = UIImage(named: "KHabib_image")
        return khabibimage
    }()
    
    
    
    override init(style:UITableViewCell.CellStyle, reuseIdentifier: String?) {
             super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        contentView.addSubview(musulmanimage)
        musulmanimage.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive=true
        musulmanimage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -5).isActive=true
        musulmanimage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 70).isActive=true
        musulmanimage.heightAnchor.constraint(equalToConstant: 225).isActive=true
        musulmanimage.layer.cornerRadius = 10
        
        contentView.addSubview(khabibimage)
        khabibimage.topAnchor.constraint(equalTo: musulmanimage.bottomAnchor,constant: 10).isActive=true
        khabibimage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -5).isActive=true
        khabibimage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 70).isActive=true
        khabibimage.heightAnchor.constraint(equalToConstant: 225).isActive=true
        khabibimage.layer.cornerRadius = 10
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

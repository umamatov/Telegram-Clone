//
//  TableViewcell.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 24/03/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    static let identifier = "TableViewCell"

    var billonerimage: UIImageView = {
        let billonerimage = UIImageView()
        billonerimage.translatesAutoresizingMaskIntoConstraints=false
        billonerimage.image = UIImage(named: "mi_image-1")
        billonerimage.layer.cornerRadius = 22.5
        billonerimage.layer.masksToBounds = false
        billonerimage.clipsToBounds = true
        return billonerimage
    }()
    
    var namelabel: UILabel = {
        let namelabel = UILabel()
        namelabel.translatesAutoresizingMaskIntoConstraints=false
        namelabel.font = UIFont.systemFont(ofSize: 18)
        namelabel.textColor = UIColor.black
        namelabel.text = "Umidjon Mamatov"
        return namelabel
    }()
    
    var seenlabel: UILabel = {
        let seenlabel = UILabel()
        seenlabel.translatesAutoresizingMaskIntoConstraints=false
        seenlabel.font = UIFont.systemFont(ofSize: 14)
        seenlabel.textColor = UIColor.systemGray
        seenlabel.text = "last seen recently"
        return seenlabel
    }()
    
    
    
    override init(style:UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    
        contentView.addSubview(billonerimage)
        billonerimage.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive=true
        billonerimage.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 10).isActive=true
        billonerimage.heightAnchor.constraint(equalToConstant: 45).isActive=true
        billonerimage.widthAnchor.constraint(equalToConstant: 45).isActive=true
        billonerimage.layer.cornerRadius = 22.5
        
        contentView.addSubview(namelabel)
        namelabel.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive=true
        namelabel.leftAnchor.constraint(equalTo: billonerimage.rightAnchor,constant: 10).isActive=true
        
        contentView.addSubview(seenlabel)
        seenlabel.topAnchor.constraint(equalTo: namelabel.bottomAnchor,constant: 0).isActive=true
        seenlabel.leftAnchor.constraint(equalTo: billonerimage.rightAnchor,constant: 10).isActive=true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}





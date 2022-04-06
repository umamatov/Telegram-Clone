//
//  CostomOrderCell.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 30/03/22.
//

import UIKit

class CostomOrderCell: UITableViewCell {
    
    
    var cubickview: UIView = {
        let cubickview = UIView()
        cubickview.translatesAutoresizingMaskIntoConstraints=false
        cubickview.backgroundColor = UIColor.systemGray5
        cubickview.clipsToBounds = true
        cubickview.layer.masksToBounds = false
        cubickview.layer.cornerRadius = 20
        return cubickview
    }()
    
    var alertlabel: UILabel = {
        let alertlabel = UILabel()
        alertlabel.translatesAutoresizingMaskIntoConstraints=false
        alertlabel.font = UIFont.systemFont(ofSize: 25)
        alertlabel.textColor = UIColor.white
        alertlabel.text = "S"
        return alertlabel
    }()
    
    var namelabel: UILabel = {
        let namelabel = UILabel()
        namelabel.translatesAutoresizingMaskIntoConstraints=false
        namelabel.font = UIFont.systemFont(ofSize: 20)
        namelabel.textColor = UIColor.black
        namelabel.text = "Sultonov Jamshidbek"
        return namelabel
    }()
    
    var contactlabel: UILabel = {
        let contactlabel = UILabel()
        contactlabel.translatesAutoresizingMaskIntoConstraints=false
        contactlabel.font = UIFont.systemFont(ofSize: 15)
        contactlabel.textColor = UIColor.systemGray
        contactlabel.text = "1,000 contacts on Telegram"
        return contactlabel
    }()
    
    var checkimage: UIImageView = {
        let checkimage = UIImageView()
        checkimage.translatesAutoresizingMaskIntoConstraints=false
        checkimage.image = UIImage(named: "checkbox_image")
        return checkimage
    }()
    
    
    
    override init(style:UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    
        contentView.addSubview(cubickview)
        cubickview.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive=true
        cubickview.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 10).isActive=true
        cubickview.heightAnchor.constraint(equalToConstant: 40).isActive=true
        cubickview.widthAnchor.constraint(equalToConstant: 40).isActive=true
        cubickview.layer.cornerRadius = 20
        
        cubickview.addSubview(alertlabel)
        alertlabel.topAnchor.constraint(equalTo: cubickview.topAnchor,constant: 4).isActive=true
        alertlabel.centerXAnchor.constraint(equalTo: cubickview.centerXAnchor).isActive=true
        
        contentView.addSubview(namelabel)
        namelabel.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 15).isActive=true
        namelabel.leftAnchor.constraint(equalTo: cubickview.rightAnchor,constant: 10).isActive=true
        
        contentView.addSubview(contactlabel)
        contactlabel.topAnchor.constraint(equalTo: namelabel.bottomAnchor,constant: 1).isActive=true
        contactlabel.leftAnchor.constraint(equalTo: cubickview.rightAnchor,constant: 10).isActive=true
        
        contentView.addSubview(checkimage)
        checkimage.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 20).isActive=true
        checkimage.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -10).isActive=true
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

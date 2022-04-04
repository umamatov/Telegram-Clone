//
//  SecondTableViewCell.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 24/03/22.
//

import UIKit

class secondTableViewCell: UITableViewCell {
    static let identifier = "secondTableViewCell"

    var texnoimage: UIImageView = {
        let texnoimage = UIImageView()
        texnoimage.translatesAutoresizingMaskIntoConstraints=false
        texnoimage.image = UIImage(named: "texno_image")
        texnoimage.layer.cornerRadius=22.5
        texnoimage.layer.masksToBounds=false
        texnoimage.clipsToBounds=true
        return texnoimage
    }()
    
    var namelabel: UILabel = {
        let namelabel = UILabel()
        namelabel.translatesAutoresizingMaskIntoConstraints=false
        namelabel.font = UIFont.systemFont(ofSize: 18)
        namelabel.textColor = UIColor.black
        namelabel.text = "Texnomart"
        return namelabel
    }()
    
    var alertlabel: UILabel = {
        let alertlabel = UILabel()
        alertlabel.translatesAutoresizingMaskIntoConstraints=false
        alertlabel.font = UIFont.systemFont(ofSize: 14)
        alertlabel.textColor = UIColor.systemGray
        alertlabel.text = "O'sha gap 😅😂😜"
        return alertlabel
    }()
    
    var checkimage: UIImageView = {
        let checkimage = UIImageView()
        checkimage.translatesAutoresizingMaskIntoConstraints=false
        checkimage.image = UIImage(named: "check_image")
        return checkimage
    }()
    
    var timelabel: UILabel = {
        let timelabel = UILabel()
        timelabel.translatesAutoresizingMaskIntoConstraints=false
        timelabel.font = UIFont.systemFont(ofSize: 14)
        timelabel.textColor = UIColor.systemGray
        timelabel.text = "1:30 PM"
        return timelabel
    }()
    

    override init(style:UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(texnoimage)
        texnoimage.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive=true
        texnoimage.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 10).isActive=true
        texnoimage.heightAnchor.constraint(equalToConstant: 45).isActive=true
        texnoimage.widthAnchor.constraint(equalToConstant: 45).isActive=true
        texnoimage.layer.cornerRadius=22.5
        
        contentView.addSubview(namelabel)
        namelabel.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive=true
        namelabel.leftAnchor.constraint(equalTo: texnoimage.rightAnchor,constant: 10).isActive=true
        
        contentView.addSubview(alertlabel)
        alertlabel.topAnchor.constraint(equalTo: namelabel.bottomAnchor,constant: 0).isActive=true
        alertlabel.leftAnchor.constraint(equalTo: texnoimage.rightAnchor,constant: 10).isActive=true

        
        contentView.addSubview(checkimage)
        checkimage.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive=true
        checkimage.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -60).isActive=true
        
        contentView.addSubview(timelabel)
        timelabel.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 15).isActive=true
        timelabel.leftAnchor.constraint(equalTo: checkimage.rightAnchor,constant: 5).isActive=true
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
        

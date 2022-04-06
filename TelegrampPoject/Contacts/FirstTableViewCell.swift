//
//  SirstTableViewCell.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 24/03/22.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    var findimage: UIImageView = {
        let findimage = UIImageView()
        findimage.translatesAutoresizingMaskIntoConstraints=false
        findimage.image = UIImage(named: "finde_image")
        return findimage
    }()

    var peoplelabel: UILabel = {
        let peoplelabel = UILabel()
        peoplelabel.translatesAutoresizingMaskIntoConstraints=false
        peoplelabel.font = UIFont.systemFont(ofSize: 18)
        peoplelabel.textColor = UIColor(rgb: 0x0FBDF6)
        peoplelabel.text = "Find People Nearby"
        return peoplelabel
    }()
    
    
    
    
    override init(style:UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    
        contentView.addSubview(findimage)
        findimage.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive=true
        findimage.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 10).isActive=true
        
        contentView.addSubview(peoplelabel)
        peoplelabel.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive=true
        peoplelabel.leftAnchor.constraint(equalTo: findimage.rightAnchor,constant: 10).isActive=true
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//
//  TableViewHeaderView.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 30/03/22.
//

import UIKit

class TelegramCell: UITableViewCell {
   
    var heartimage: UIImageView = {
        let heartimage = UIImageView()
        heartimage.translatesAutoresizingMaskIntoConstraints=false
        heartimage.image = UIImage(named: "heart_image")
        return heartimage
    }()
    
    var sharelabel: UILabel = {
        let sharelabel = UILabel()
        sharelabel.translatesAutoresizingMaskIntoConstraints=false
        sharelabel.font = UIFont.systemFont(ofSize: 20)
        sharelabel.textColor = UIColor.systemBlue
        sharelabel.text = "Share telegram"
        return sharelabel
    }()
    
    override init(style:UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(heartimage)
        heartimage.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 9).isActive=true
        heartimage.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 10).isActive=true

        contentView.addSubview(sharelabel)
        sharelabel.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 6).isActive=true
        sharelabel.leftAnchor.constraint(equalTo: heartimage.rightAnchor,constant: 15).isActive=true
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

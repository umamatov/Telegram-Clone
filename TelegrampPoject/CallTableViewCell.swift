//
//  CallTableViewCell.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 04/04/22.
//

import UIKit

class CallTableViewCell: UITableViewCell {
    
    var khabibImage: UIImageView = {
        let khabibImage = UIImageView()
        khabibImage.translatesAutoresizingMaskIntoConstraints=false
        khabibImage.image = UIImage(named: "KHabib_image")
        khabibImage.layer.cornerRadius = 17.5
        khabibImage.layer.masksToBounds = false
        khabibImage.clipsToBounds = true
        return khabibImage
    }()
    
    var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints=false
        nameLabel.font = UIFont.systemFont(ofSize: 20)
        nameLabel.textColor = .black
        nameLabel.text = "Jack Hack"
        return nameLabel
    }()
    
    
    override init(style:UITableViewCell.CellStyle, reuseIdentifier: String?) {
             super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(khabibImage)
        khabibImage.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive=true
        khabibImage.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 30).isActive=true
        khabibImage.heightAnchor.constraint(equalToConstant: 35).isActive=true
        khabibImage.widthAnchor.constraint(equalToConstant: 35).isActive=true
        khabibImage.layer.cornerRadius = 17.5
        
        contentView.addSubview(nameLabel)
        nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive=true
        nameLabel.leftAnchor.constraint(equalTo: khabibImage.rightAnchor,constant: 5).isActive=true
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}

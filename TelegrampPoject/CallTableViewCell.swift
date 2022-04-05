//
//  CallTableViewCell.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 04/04/22.
//

import UIKit

class CallTableViewCell: UITableViewCell {
    
    
    
    var videoImage: UIImageView = {
        let videoImage = UIImageView()
        videoImage.translatesAutoresizingMaskIntoConstraints=false
        videoImage.image = UIImage(named: "video_image-1")
        return videoImage
    }()
    
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
    
    var incomingLabel: UILabel = {
        let incomingLabel = UILabel()
        incomingLabel.translatesAutoresizingMaskIntoConstraints=false
        incomingLabel.font = UIFont.systemFont(ofSize: 14)
        incomingLabel.textColor = UIColor.systemGray
        incomingLabel.text = "Incoming"
        return incomingLabel
    }()
    
    var informationImage: UIImageView = {
        let informationImage = UIImageView()
        informationImage.translatesAutoresizingMaskIntoConstraints=false
        informationImage.image = UIImage(named: "information-image")
        return informationImage
    }()
    
    var sunLabel: UILabel = {
        let sunLabel = UILabel()
        sunLabel.translatesAutoresizingMaskIntoConstraints=false
        sunLabel.font = UIFont.systemFont(ofSize: 16)
        sunLabel.textColor = UIColor.systemGray
        sunLabel.text = "Sun"
        return sunLabel
    }()
    
    
    
    
    override init(style:UITableViewCell.CellStyle, reuseIdentifier: String?) {
             super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(videoImage)
        videoImage.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 20).isActive=true
        videoImage.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 5).isActive=true
        videoImage.heightAnchor.constraint(equalToConstant: 15).isActive=true
        videoImage.widthAnchor.constraint(equalToConstant: 15).isActive=true
        
        contentView.addSubview(khabibImage)
        khabibImage.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive=true
        khabibImage.leftAnchor.constraint(equalTo: videoImage.rightAnchor,constant: 10).isActive=true
        khabibImage.heightAnchor.constraint(equalToConstant: 35).isActive=true
        khabibImage.widthAnchor.constraint(equalToConstant: 35).isActive=true
        khabibImage.layer.cornerRadius = 17.5
        
        contentView.addSubview(nameLabel)
        nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 7).isActive=true
        nameLabel.leftAnchor.constraint(equalTo: khabibImage.rightAnchor,constant: 10).isActive=true
        
        contentView.addSubview(incomingLabel)
        incomingLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor,constant: 0).isActive=true
        incomingLabel.leftAnchor.constraint(equalTo: khabibImage.rightAnchor,constant: 10).isActive=true
        
        contentView.addSubview(informationImage)
        informationImage.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 13).isActive=true
        informationImage.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -10).isActive=true
        
        contentView.addSubview(sunLabel)
        sunLabel.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 15).isActive=true
        sunLabel.rightAnchor.constraint(equalTo: informationImage.leftAnchor,constant: -5).isActive=true
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}

//
//  LeftMytableCell.swift
//  TelegrampPoject
//
//  Created by Umidjon Mamatov on 29/03/22.
//
import UIKit

class LeftMytableCell: UITableViewCell {
    
    let messageLabel = UILabel()
    let bubbleBackgroundView = UIView()
   
    var leadingConstraint: NSLayoutConstraint!
    var trailingConstraint: NSLayoutConstraint!
    
    var chatmessage: ChatMessage! {
        didSet {
            bubbleBackgroundView.backgroundColor = chatmessage.isIncoming ? .white : .systemGreen
            messageLabel.textColor = chatmessage.isIncoming ? .black : .white
            
            messageLabel.text = chatmessage.text
            
            if chatmessage.isIncoming {
                leadingConstraint.isActive = true
                trailingConstraint.isActive = false

            } else {
                leadingConstraint.isActive = false
                trailingConstraint.isActive = true
            }
        }
    }
    


    override init(style:UITableViewCell.CellStyle, reuseIdentifier: String?) {
          super.init(style: style, reuseIdentifier: reuseIdentifier)

        backgroundColor = .clear
        
        bubbleBackgroundView.backgroundColor = .white
        bubbleBackgroundView.layer.cornerRadius = 12
        bubbleBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(bubbleBackgroundView)
        
        
        addSubview(messageLabel)
//        messageLabel.backgroundColor = .green
        messageLabel.text = "We want to provide a longer string that is actually going to wrap onto the next line and  maybe evon a third line"
        messageLabel.numberOfLines = 0
        
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // lets set up some constraints for our label
       let constraints =  [messageLabel.topAnchor.constraint(equalTo: topAnchor,constant: 10),
        messageLabel.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -32),
        messageLabel.widthAnchor.constraint(lessThanOrEqualToConstant: 250),
       
        bubbleBackgroundView.topAnchor.constraint(equalTo: messageLabel.topAnchor,constant: -16),
        bubbleBackgroundView.leadingAnchor.constraint(equalTo: messageLabel.leadingAnchor,constant: -16),
        bubbleBackgroundView.bottomAnchor.constraint(equalTo: messageLabel.bottomAnchor,constant: 16),
        bubbleBackgroundView.trailingAnchor.constraint(equalTo: messageLabel.trailingAnchor,constant: 16),
       ]

        NSLayoutConstraint.activate(constraints)
        
         leadingConstraint = messageLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 32)
        leadingConstraint.isActive = false
    
        trailingConstraint = messageLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -32)
        trailingConstraint.isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

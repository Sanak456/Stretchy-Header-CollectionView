//
//  HeaderView.swift
//  StretchyHeaderCustomFlowLayout
//
//  Created by Sanak Ghosh on 12/19/20.
//


import UIKit

class HeaderView: UICollectionReusableView { //20
    
    let imageView: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "Screen Shot 2020-09-14 at 6.22.35 AM"))
        iv.contentMode = .scaleAspectFill
        return iv
    }() //31
    
    override init(frame: CGRect) { // 21
        super.init(frame: frame) //22
        // Custom code for layout
        
        backgroundColor = .red //23
        
        addSubview(imageView) //32
        
        imageView.fillSuperview() //35 // conected with Extensions
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

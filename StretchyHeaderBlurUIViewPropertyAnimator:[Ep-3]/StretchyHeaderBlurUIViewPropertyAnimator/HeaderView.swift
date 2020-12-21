//
//  HeaderView.swift
//  StretchyHeaderCustomFlowLayout
//
//  Created by Sanak Ghosh on 12/19/20.
//


import UIKit

class HeaderView: UICollectionReusableView { //20
    
    let imageView: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "download"))
        iv.contentMode = .scaleAspectFill
        return iv
    }() //31
    
    override init(frame: CGRect) { // 21
        super.init(frame: frame) //22
        // Custom code for layout
        
        backgroundColor = .red //23
        
        addSubview(imageView) //32
        
        imageView.fillSuperview() //35 // conected with Extensions
        
        // Blur
        setupVisualEffectBlur()
        
    }
    
    var animator: UIViewPropertyAnimator!
   
    fileprivate func setupVisualEffectBlur() {
        
        animator = UIViewPropertyAnimator(duration: 3.0, curve: .linear, animations: {  [ weak self ] in
            
            // treat this area as the state of your animation
            let blurEffect = UIBlurEffect(style: .regular)
            let visualEffectView = UIVisualEffectView(effect: blurEffect)
            
            visualEffectView.isUserInteractionEnabled = false
            self?.addSubview(visualEffectView)
            visualEffectView.fillSuperview()
            
        })
        
        animator.fractionComplete = 0
      //  animator.startAnimation()
       // animator.pausesOnCompletion = true 
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

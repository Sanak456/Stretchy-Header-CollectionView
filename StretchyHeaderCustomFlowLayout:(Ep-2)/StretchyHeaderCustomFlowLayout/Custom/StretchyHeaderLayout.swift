//
//  StretchyHeaderLayout.swift
//  StretchyHeaderCustomFlowLayout
//
//  Created by Sanak Ghosh on 12/19/20.
//

import UIKit

class StretchyHeaderLayout: UICollectionViewFlowLayout {

    // we want to modify thr attributes of our header component somehow
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        
        let layoutAttributes = super.layoutAttributesForElements(in: rect)
        
        layoutAttributes?.forEach({ (attributes) in
            
            if attributes.representedElementKind == UICollectionView.elementKindSectionHeader // && attributes.indexPath.section == 0
            {
                // attributes.indexPath.section for multiple header
                
                guard let collectionView = collectionView else {return}
                
                let contentOffsetY = collectionView.contentOffset.y
                print(contentOffsetY)
                
                if contentOffsetY > 0 {
                    return
                }
                
                let width = collectionView.frame.width
                
                let height = attributes.frame.height - contentOffsetY
                
                // Header
                attributes.frame = CGRect(x: 0, y: contentOffsetY, width: width, height: height)
                
            }
            
        })
        
        
        return layoutAttributes
    }
    
    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        return true
    }
    
    
}

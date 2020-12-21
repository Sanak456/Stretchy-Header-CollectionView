//
//  StretchyHeaderController.swift
//  StretchyHeaderCustomFlowLayout
//
//  Created by Sanak Ghosh on 12/19/20.
//

import UIKit


class StretchyHeaderController: UICollectionViewController, UICollectionViewDelegateFlowLayout { //16
    
    fileprivate let cellId = "cellId" //11
    fileprivate let headerId = "headerId" //24
    fileprivate let padding: CGFloat = 16
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionViewLayout() //32
        setupCollectionView() //19
    }
    
    fileprivate func setupCollectionViewLayout() { //33
        // layout customization
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
            
            layout.sectionInset = .init(top: padding, left: padding, bottom: padding, right: padding)
            
        } //34
    }
    // barstyle likhlei cole ashbe
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    } // 37
    
    fileprivate func setupCollectionView() {
        // Custom code for our collection view
        collectionView.backgroundColor = .white //6
        
        collectionView.contentInsetAdjustmentBehavior = .never //36
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId) //12
        
        collectionView.register(HeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId) //30
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView { //25
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) //26
        
        return header //27
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize { //28
        
        return .init(width: view.frame.width, height: 340) //29
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int { //7
        return 18 //8
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell { //9
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) //10
        
        cell.backgroundColor = .black //14
        
        return cell //13
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize { //17
        
        return .init(width: view.frame.width - 2 * padding, height: 50) //18
    }
    
}

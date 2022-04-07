//
//  CollectionViewDelegate+DataSourse.swift
//  Ranglar
//
//  Created by Nurillo Domlajonov on 03/03/22.
//

import UIKit

extension LearnController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.getSize()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LearnCell.identifier, for: indexPath) as! LearnCell
        cell.getItems(title: model.getItem(index: indexPath.item).title, backColor: model.getItem(index: indexPath.item).cellColor, soundName: model.getItem(index: indexPath.item).soundTitle)
        if indexPath.item%2==1||indexPath.item == 12{
            cell.titleLabel.textColor = .white
        }
        else{
            cell.titleLabel.textColor = .black
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.frame.width-20, height: 120)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        playAudio(audioName: model.getItem(index: indexPath.item).soundTitle)
    }
    
    
}

//
//  MomorizeCell.swift
//  Ranglar
//
//  Created by Nurillo Domlajonov on 04/03/22.

import UIKit

class MemorizeCell: UICollectionViewCell{
    let image = UIImageView()
    override init(frame: CGRect) {
        super.init(frame: frame)
        initViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension MemorizeCell{
    private func initViews(){
        self.addSubview(image)
        image.image = UIImage(named: "1")
        image.contentMode = .scaleToFill
        image.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

//
//  LearnCell.swift
//  Ranglar
//
//  Created by Nurillo Domlajonov on 03/03/22.
//

import UIKit

class LearnCell: UICollectionViewCell {
    let titleLabel = UILabel()
    
    static let identifier = "cell"
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = 18
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 5
        self.layer.shadowRadius = 5
        initViews()
    }
    private func initViews(){
        self.addSubview(titleLabel)
        titleLabel.text = ""
        titleLabel.textAlignment = .center
        titleLabel.textColor = .black
        titleLabel.font = UIFont(name: "Times New Roman", size: 35)
        titleLabel.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.right.left.equalToSuperview().inset(10)
            make.top.bottom.equalToSuperview().inset(10)
        }
    }
    func getItems(title: String, backColor: UIColor,soundName: String){
        titleLabel.text = title
        self.backgroundColor = backColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

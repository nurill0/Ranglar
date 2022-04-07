//
//  ColorsModel.swift
//  Ranglar
//
//  Created by Nurillo Domlajonov on 03/03/22.
//

import UIKit

struct Data{
    let data: [RequiredThings] = [
        RequiredThings(title: "Yashil", soundTitle: "yashil", cellColor: #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)),
        RequiredThings(title: "Ko`k", soundTitle: "koʻk", cellColor: #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)),
        RequiredThings(title: "Oq", soundTitle: "oq", cellColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),
        RequiredThings(title: "To`q sariq", soundTitle: "toʻq sariq", cellColor: #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)),
        RequiredThings(title: "Havorang", soundTitle: "havorang", cellColor: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)),
        RequiredThings(title: "Jigarrang", soundTitle: "jigarrang", cellColor: #colorLiteral(red: 0.5787474513, green: 0.3215198815, blue: 0, alpha: 1)),
        RequiredThings(title: "Kulrang", soundTitle: "kulrang", cellColor: #colorLiteral(red: 0.6642242074, green: 0.6642400622, blue: 0.6642315388, alpha: 1)),
        RequiredThings(title: "Pushti", soundTitle: "pushti", cellColor: #colorLiteral(red: 1, green: 0.5409764051, blue: 0.8473142982, alpha: 1)),
        RequiredThings(title: "Qizil", soundTitle: "qizil", cellColor: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)),
        RequiredThings(title: "Qora", soundTitle: "qora", cellColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),
        RequiredThings(title: "Sariq", soundTitle: "sariq", cellColor: #colorLiteral(red: 0.9995340705, green: 0.988355577, blue: 0.4726552367, alpha: 1)),
        RequiredThings(title: "Siyohrang", soundTitle: "siyohrang", cellColor: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)),
        RequiredThings(title: "To`q Qizil", soundTitle: "toʻq qizil", cellColor: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)),
    ]
    func getSize()->Int{
        return data.count
        
    }
    func getItem(index: Int)->RequiredThings{
        return data[index]
    }
}

struct RequiredThings{
    let title: String
    let soundTitle: String
    let cellColor: UIColor
}

//  GameController.swift
//  Ranglar
//  Created by Nurillo Domlajonov on 03/03/22.
//



import UIKit

class MemorizeGameVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var shapes = DummyData.memorizeData
    var options: [Card] = []
    var cardQuestion: [String] = []
    
    var isSelected = false
    var selectedNum: [Int] = []
    
    var hiddenButtons: [Int] = []
    
    var isCorrect = false
    var isChecked = false
    
    var attempt = 0
    
    var attemptLabel = UILabel()
    var winLabel = UILabel()
    var attemptWinLabel = UILabel()
    
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        return UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
    }()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        attemptLabel.text = "Noto`g`rilarining soni: \(attempt)"
        shapes.shuffle()
        initViews()
        initOptions()
        view.backgroundColor = .white
        winLabel.isHidden = true
        attemptWinLabel.isHidden = true
        attemptLabel.isHidden = false
        navigationController?.navigationBar.titleTextAttributes = [
            .foregroundColor: UIColor.black,
            .font: UIFont(name: "Times New Roman", size: 22)
        ]
        navigationController?.navigationBar.tintColor = .black

    
        title = "O`yin"
        
    }
    
    func initOptions() {
        for index in 0...11 {
            options.append(shapes[index % 6])
            cardQuestion.append("question")
        }
        
        options.shuffle()
    }
    
    
    func initViews() {
        view.addSubview(attemptLabel)
        view.addSubview(winLabel)
        view.addSubview(attemptWinLabel)
        
        attemptLabel.text = "Urinishlar: 0"
        attemptLabel.snp.makeConstraints { make in
            make.right.equalToSuperview().inset(20)
            make.top.equalTo(self.view.safeAreaLayoutGuide)
        }
        
        winLabel.text = "Tabriklaymiz siz hammma ranglarni topdingiz!"
        winLabel.font = .systemFont(ofSize: 44, weight: .bold)
        winLabel.textColor = .red
        winLabel.numberOfLines = 0
        winLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.left.right.equalToSuperview().inset(20)
        }
        
        attemptWinLabel.text = "Noto`g`rilari: 10"
        attemptWinLabel.font = .systemFont(ofSize: 36, weight: .bold)
        attemptWinLabel.textColor = .green
        attemptWinLabel.snp.makeConstraints { make in
            make.top.equalTo(winLabel.snp.bottom).offset(20)
            make.left.right.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        
        
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(attemptLabel.snp.bottom)
            make.right.left.bottom.equalToSuperview()
        }
        collectionView.isScrollEnabled = false
        collectionView.showsVerticalScrollIndicator = true
        collectionView.backgroundColor = .clear
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(MemorizeCell.self, forCellWithReuseIdentifier: "MemorizeCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
    }
    
    func checkCards() {
        if options[selectedNum[0]].word1 == options[selectedNum[1]].word1 {
            isCorrect = true
            hiddenButtons.append(contentsOf: selectedNum)
        } else {
            attempt += 1
            attemptLabel.text = "Xatolar: \(attempt)"

            isCorrect = false
        }
        
        isChecked = true
        
        self.collectionView.reloadData()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
            
            self.selectedNum = []
            self.isSelected = false
            self.isChecked = false
            
            self.collectionView.reloadData()
            self.checkWin()
        }
        
        
        
                 
    }
    func showAlert(){
        let alertController = UIAlertController(title: "Muvofaqqiyatli yakunlandi!!!", message: "Xatolar soni: \(attempt)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: " OK ", style: .cancel) { (action) in
            self.attemptWinLabel.text = "Urinishlar: 0"
            self.goBack()
            
        }
        present(alertController, animated: true, completion: nil)
        
        alertController.addAction(okAction)
    }
    @objc func goBack(){
        navigationController?.popViewController(animated: false)
    }
    
    func checkWin() {
        if hiddenButtons.count == 12 {
            showAlert()
            
            winLabel.isHidden = true
            collectionView.isHidden = true
            attemptWinLabel.isHidden = true
            attemptLabel.isHidden = true
            attemptWinLabel.text = "Xatolari: \(attempt)"
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemorizeCell", for: indexPath) as! MemorizeCell
        
        cell.image.image = UIImage(named: cardQuestion[indexPath.item])
        cell.backgroundColor = .white
        
        if isChecked {
            if isCorrect {
                if indexPath.item == selectedNum[0] || indexPath.item == selectedNum[1] {
                    cell.backgroundColor = .green

                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.20) {
                        cell.isHidden = false
                    }
                }
            } else {
                if indexPath.item == selectedNum[0] || indexPath.item == selectedNum[1] {
                    cell.backgroundColor = .red
                 
                    cardQuestion[indexPath.item] = "question"
                } else {
                    cell.backgroundColor = .white
                }
            }
        } else {
            
            if selectedNum.count == 1 {
                if indexPath.item == selectedNum[0] {
                    UIView.transition(with: cell, duration: 0.5, options: .transitionFlipFromRight, animations: nil, completion: nil)
                }
            } else if selectedNum.count == 2 {
                if indexPath.item == selectedNum[1] {
                    UIView.transition(with: cell, duration: 0.5, options: .transitionFlipFromRight, animations: nil, completion: nil)
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        self.checkCards()
                    }
                }
            }
        }
        
        if hiddenButtons.contains(indexPath.item) {
            cell.isHidden = true
        } else {
            cell.isHidden = false
        }
        
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        cell.layer.shadowRadius = 4
        cell.layer.shadowOpacity = 2
        cell.layer.cornerRadius = 6
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (self.collectionView.frame.width - 80) / 3
        let height = (self.collectionView.frame.height - 90) / 4
        
        return CGSize(width: width, height: height)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 20, bottom: 10, right: 20)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if selectedNum.count == 2 {
            return
        }
        if isSelected {
            if selectedNum.contains(indexPath.item) { return }
            cardQuestion[indexPath.item] = options[indexPath.item].word2
            selectedNum.append(indexPath.item)
            collectionView.reloadData()
        } else {
            cardQuestion[indexPath.item] = options[indexPath.item].word2
            selectedNum.append(indexPath.item)
            isSelected = true
            collectionView.reloadData()
        }
    }
}


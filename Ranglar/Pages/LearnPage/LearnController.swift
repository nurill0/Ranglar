//
//  LearnController.swift
//  Ranglar
//
//  Created by Nurillo Domlajonov on 03/03/22.
//

import UIKit
import AVFoundation

class LearnController: UIViewController {
    static var player = AVAudioPlayer()
    let model = Data()
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 15
        layout.minimumInteritemSpacing = 20
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsVerticalScrollIndicator = false
        collectionView.register(LearnCell.self, forCellWithReuseIdentifier: LearnCell.identifier)
        return collectionView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.backgroundColor = .clear
        navigationItem.backButtonTitle  = "Ortga"
        navigationController?.navigationBar.titleTextAttributes = [
            .foregroundColor: UIColor.black,
            .font: UIFont(name: "Times New Roman", size: 22)
        ]
        navigationController?.navigationBar.tintColor = .black

        title = "O`rganamiz"
        navigationItem.backBarButtonItem?.tintColor = .black
        initViews()
    }
    private func initViews(){
        view.addSubview(collectionView)
        collectionView.backgroundColor = .clear
        collectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    func playAudio(audioName: String) {
        let url = Bundle.main.url(forResource: audioName, withExtension: "mp3")
        LearnController.player = try! AVAudioPlayer(contentsOf: url!)
        LearnController.player.play()
    }
}

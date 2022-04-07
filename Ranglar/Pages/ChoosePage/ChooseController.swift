//
//  ChooseController.swift
//  Ranglar
//
//  Created by Nurillo Domlajonov on 03/03/22.
//

import UIKit
import SnapKit

class ChooseController: UIViewController {
    let titleImageView = UIImageView()
    let stackView = UIStackView()
    
    let learnButton = UIButton(type: .system)
    let quizButton = UIButton(type: .system)
    let logicGame = UIButton(type: .system)
    let logicColorsButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.setHidesBackButton(true, animated: true)
        navigationItem.backButtonTitle  = "Ortga"
        navigationController?.navigationBar.titleTextAttributes = [
            .foregroundColor: UIColor.white,
            .font: UIFont(name: "Marker Felt", size: 30)
        ]
        initViews()
        initStackView()
        
        
        learnButton.addTarget(self, action: #selector(goLearn), for: .touchUpInside)
        quizButton.addTarget(self, action: #selector(goQuiz), for: .touchUpInside)
        logicGame.addTarget(self, action: #selector(goGame), for: .touchUpInside)
    }
    private func initViews(){
        view.addSubview(titleImageView)
        titleImageView.image = UIImage(named: "colors")
        titleImageView.contentMode = .scaleAspectFill
        titleImageView.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
            make.right.left.equalToSuperview().inset(10)
            make.height.equalTo(100)
        }
    }
    
    func initStackView(){
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.axis = .vertical
        stackView.backgroundColor = .clear
        stackView.spacing = 10
        view.addSubview(stackView)
        if view.frame.height>670{
            stackView.snp.makeConstraints { make in
                make.top.equalTo(titleImageView.snp.bottom).offset(90)
                make.right.left.equalToSuperview().inset(10)
                make.bottom.equalToSuperview().offset(-110)
            }
        }else{
            stackView.snp.makeConstraints { make in
                make.top.equalTo(titleImageView.snp.bottom).offset(30)
                make.right.left.equalToSuperview().inset(10)
                make.bottom.equalToSuperview().offset(-30)
            }
        }
        
        
        stackView.addArrangedSubview(learnButton)
        stackView.addArrangedSubview(quizButton)
        stackView.addArrangedSubview(logicGame)
        learnButton.setTitle("O`rganish", for: .normal)
        learnButton.imageView?.contentMode = .scaleAspectFit
        learnButton.imageView?.snp.makeConstraints({ make in
            make.left.top.bottom.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.3)
        })
        learnButton.titleLabel?.snp.makeConstraints({ make in
            make.width.equalToSuperview().multipliedBy(0.7)
            make.right.bottom.top.equalToSuperview()
        })
        learnButton.setTitleColor(.white, for: .normal)
        learnButton.titleLabel?.font = UIFont(name: "Chalkduster", size: 30)
        learnButton.titleLabel?.textAlignment = .center
        
        quizButton.imageView?.contentMode = .scaleAspectFit
        quizButton.imageView?.snp.makeConstraints({ make in
            make.left.top.bottom.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.3)
        })
        quizButton.titleLabel?.snp.makeConstraints({ make in
            make.width.equalToSuperview().multipliedBy(0.7)
            make.right.bottom.top.equalToSuperview()
        })
        quizButton.setTitleColor(.white, for: .normal)
        quizButton.titleLabel?.font = UIFont(name: "Chalkduster", size: 30)
        quizButton.titleLabel?.textAlignment = .center
        
        logicGame.imageView?.contentMode = .scaleAspectFit
        logicGame.imageView?.snp.makeConstraints({ make in
            make.left.top.bottom.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.3)
        })
        logicGame.titleLabel?.snp.makeConstraints({ make in
            make.width.equalToSuperview().multipliedBy(0.7)
            make.right.bottom.top.equalToSuperview()
        })
        logicGame.setTitleColor(.white, for: .normal)
        logicGame.titleLabel?.font = UIFont(name: "Chalkduster", size: 30)
        logicGame.titleLabel?.textAlignment = .center
        
        
        
        quizButton.setTitle("Test Savollari", for: .normal)
        logicGame.setTitle("Qiziqarli o`yin", for: .normal)
        learnButton.setImage(UIImage(named: "learn")?.withRenderingMode(.alwaysOriginal), for: .normal)
        quizButton.setImage(UIImage(named: "quiz")?.withRenderingMode(.alwaysOriginal), for: .normal)
        
        logicGame.setImage(UIImage(named: "puzzle")?.withRenderingMode(.alwaysOriginal), for: .normal)
        
        learnButton.backgroundColor = .systemBlue
        quizButton.backgroundColor = .orange
        logicGame.backgroundColor = .green
        
        learnButton.layer.cornerRadius = 18
        quizButton.layer.cornerRadius = 18
        logicGame.layer.cornerRadius = 18
        
        
        if view.frame.height>670{
            learnButton.snp.makeConstraints { make in
                make.height.equalTo(110)
            }
            quizButton.snp.makeConstraints { make in
                make.height.equalTo(110)
            }
            logicColorsButton.snp.makeConstraints { make in
                make.height.equalTo(110)
            }
            
        }
        else{
            learnButton.snp.makeConstraints { make in
                make.height.equalTo(100)
            }
            quizButton.snp.makeConstraints { make in
                make.height.equalTo(100)
            }
            logicColorsButton.snp.makeConstraints { make in
                make.height.equalTo(100)
            }
        }
        
    }
    @objc func goLearn(){
        let vc = LearnController()
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
    }
    @objc func goQuiz(){
        let vc = QuizController()
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
    }
    @objc func goGame(){
        let vc =  MemorizeGameVC()
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
    }
}

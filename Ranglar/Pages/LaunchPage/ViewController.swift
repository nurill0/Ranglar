//
//  ViewController.swift
//  Planetalar
//
//  Created by Nurillo Domlajonov on 21/01/22.
//

import UIKit
import Lottie
@available(iOS 11.0, *)
class ViewController: UIViewController {
    var animationView: AnimationView?
    var timer        :         Timer!
    
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        initAnimations()
        initTimer()
        view.backgroundColor = .white
      
    }
    
    private func initAnimations(){
        animationView = .init(name: "launch")
        animationView?.frame = view.bounds
        animationView?.animationSpeed = 1.5
        animationView?.loopMode = .loop
        view.addSubview(animationView!)
        animationView?.play()
    }
    
    func initTimer(){
        timer = Timer.scheduledTimer(timeInterval: 3.3, target: self, selector: #selector(goWelcomeContoller), userInfo: nil, repeats: true)
    }
    
    @objc func goWelcomeContoller(){
        let vc = ChooseController()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        navigationItem.leftBarButtonItem?.isEnabled = false
        navigationController?.pushViewController(vc, animated: false)
        self.timer.invalidate()
    }

}

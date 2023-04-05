//
//  MainViewController.swift
//  interviewHelper
//
//  Created by Haydar Bekmuradov on 3.04.23.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        showOnboardingScreen()
    }
    
    @IBAction func juniorButtonAction() {
        showJuniorScreen()
    }
}

// MARK: -
// MARK: Configure
private extension MainViewController {
    
    func configure() {
        
    }
    
    func showJuniorScreen() {
        let vc = UIStoryboard(name: "Question", bundle: nil).instantiateViewController(identifier: "QuestionViewController") as! QuestionViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func showOnboardingScreen() {
        if !UserDefaultsManager.shared.get(data: .onboarding) {
            let onboarding = UIStoryboard(name: "Onboarding", bundle: nil).instantiateViewController(withIdentifier: "OnbordingViewController") as! OnbordingViewController
            onboarding.modalPresentationStyle = .fullScreen
            present(onboarding, animated: true)
        }
    }
}

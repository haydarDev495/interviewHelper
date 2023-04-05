//
//  OnbordingViewController.swift
//  interviewHelper
//
//  Created by Haydar Bekmuradov on 3.04.23.
//

import UIKit

class OnbordingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func nextButtonAction() {
        dismiss(animated: true)
        UserDefaultsManager.shared.save(value: true, data: .onboarding)
    }
}

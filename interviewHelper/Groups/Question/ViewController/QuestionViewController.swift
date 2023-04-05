//
//  QuestionViewController.swift
//  interviewHelper
//
//  Created by Haydar Bekmuradov on 3.04.23.
//

import UIKit

class QuestionViewController: UIViewController {

    // - UI 
    @IBOutlet weak var collectionView: UICollectionView!
    
    // - Data
    private let questions = QuestionsEnum.allCases
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    @IBAction func backButtonAction() {
        navigationController?.popViewController(animated: true)
    }
}

// MARK: -
// MARK: Configure
private extension QuestionViewController {
    
    func configure() {
        configureCollectionViewCell()
    }
    
    func configureCollectionViewCell() {
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    func showWebScreen(data: QuestionsEnum) {
        let vc = UIStoryboard(name: "Web", bundle: nil).instantiateViewController(identifier: "WebViewController") as! WebViewController
        vc.data = data
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

// MARK: -
// MARK: CollectionViewDataSource
extension QuestionViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        questions.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuestionCollectionViewCell", for: indexPath) as! QuestionCollectionViewCell
        cell.setupUI(name: questions[indexPath.item])
        return cell
    }
    
}

// MARK: -
// MARK: CollectionViewDelegate
extension QuestionViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        showWebScreen(data: questions[indexPath.item])
    }

}

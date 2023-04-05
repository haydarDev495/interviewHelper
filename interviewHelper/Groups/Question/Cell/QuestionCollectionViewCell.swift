//
//  QuestionCollectionViewCell.swift
//  interviewHelper
//
//  Created by Haydar Bekmuradov on 3.04.23.
//

import Foundation
import UIKit

class QuestionCollectionViewCell: UICollectionViewCell {
    
    // - UI
    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }
    
    func setupUI(name: QuestionsEnum) {
        nameLabel.text = name.rawValue
    }
}

// MARK: -
// MARK: Configure
private extension QuestionCollectionViewCell {
    func configure() {
        configureGradientView()
    }
    
    func configureGradientView() {
        gradientView.layer.cornerRadius = 20
    }
}

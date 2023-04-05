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
    
    // - Gradient
    private let gradient = CAGradientLayer()
    
    // - Shape
    private let shape = CAShapeLayer()
    
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
        gradientView.layer.borderWidth = 2
        gradientView.layer.borderColor = UIColor(red: 1.00, green: 0.75, blue: 0.12, alpha: 1.00).cgColor
    }
    
}

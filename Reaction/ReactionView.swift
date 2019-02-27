//
//  ReactionView.swift
//  Reaction
//
//  Created by Lohen Yumnam on 27/02/19.
//  Copyright © 2019 Lohen Yumnam. All rights reserved.
//

import UIKit

class ReactionView: UIView {
    let happyStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 5
        stackView.distribution = .fillProportionally
        return stackView
    }()
    let happyButton : UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.translatesAutoresizingMaskIntoConstraints = false
        let buttonImage = UIImage(named: "happy")
        button.setImage(buttonImage, for: UIControl.State.normal)
        button.tintColor = UIColor.white
        button.addTarget(self, action: #selector(happyButtonTapped(_:)), for: UIControl.Event.touchUpInside)
        button.isHidden = false
        return button
    }()
    let happyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Happy"
        label.textColor = .red
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.textAlignment = .center
        label.setContentHuggingPriority(UILayoutPriority.defaultHigh, for: .vertical)
        return label
    }()
    
    let angryStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 5
        return stackView
    }()
    let angryButton : UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.translatesAutoresizingMaskIntoConstraints = false
        let buttonImage = UIImage(named: "angry")
        button.setImage(buttonImage, for: UIControl.State.normal)
        button.tintColor = UIColor.white
        button.addTarget(self, action: #selector(angryButtonTapped(_:)), for: UIControl.Event.touchUpInside)
        button.isHidden = false
        return button
    }()
    let angryLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Angry"
        label.textColor = .red
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.textAlignment = .center
        label.setContentHuggingPriority(UILayoutPriority.defaultHigh, for: .vertical)
        return label
    }()
    
    let loveStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 5
        return stackView
    }()
    let loveButton : UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.translatesAutoresizingMaskIntoConstraints = false
        let buttonImage = UIImage(named: "love")
        button.setImage(buttonImage, for: UIControl.State.normal)
        button.tintColor = UIColor.white
        button.addTarget(self, action: #selector(loveButtonTapped(_:)), for: UIControl.Event.touchUpInside)
        button.isHidden = false
        return button
    }()
    let loveLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Love"
        label.textColor = .red
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.textAlignment = .center
        label.setContentHuggingPriority(UILayoutPriority.defaultHigh, for: .vertical)
        return label
    }()
    
    let sadStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 5
        return stackView
    }()
    let sadButton : UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.translatesAutoresizingMaskIntoConstraints = false
        let buttonImage = UIImage(named: "sad")
        button.setImage(buttonImage, for: UIControl.State.normal)
        button.tintColor = UIColor.white
        button.addTarget(self, action: #selector(loveButtonTapped(_:)), for: UIControl.Event.touchUpInside)
        button.isHidden = false
        return button
    }()
    let sadLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sad"
        label.textColor = .red
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.textAlignment = .center
        label.setContentHuggingPriority(UILayoutPriority.defaultHigh, for: .vertical)
        return label
    }()
    
    let wowStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 5
        return stackView
    }()
    let wowButton : UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.translatesAutoresizingMaskIntoConstraints = false
        let buttonImage = UIImage(named: "wow")
        button.setImage(buttonImage, for: UIControl.State.normal)
        button.tintColor = UIColor.white
        button.addTarget(self, action: #selector(wowButtonTapped(_:)), for: UIControl.Event.touchUpInside)
        button.isHidden = false
        return button
    }()
    let wowLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Wow"
        label.textColor = .red
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.textAlignment = .center
        label.setContentHuggingPriority(UILayoutPriority.defaultHigh, for: .vertical)
        return label
    }()
    
    let reactionStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = NSLayoutConstraint.Axis.horizontal
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 7
        return stackView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Add Target
extension ReactionView {
    @objc func happyButtonTapped(_ sender: UIButton) {
    
    }
    
    @objc func angryButtonTapped(_ sender: UIButton) {
        
    }
    
    @objc func loveButtonTapped(_ sender: UIButton) {
        
    }
    
    @objc func sadButtonTapped(_ sender: UIButton) {
        
    }
    
    @objc func wowButtonTapped(_ sender: UIButton) {
        
    }
    
}

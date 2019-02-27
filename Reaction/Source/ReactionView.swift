//
//  ReactionView.swift
//  Reaction
//
//  Created by Lohen Yumnam on 27/02/19.
//  Copyright © 2019 Lohen Yumnam. All rights reserved.
//

import UIKit

protocol ReactionViewDelegate: AnyObject {
    func happyButtonTapped(_ sender: UIButton)
    func angryButtonTapped(_ sender: UIButton)
    func loveButtonTapped(_ sender: UIButton)
    func sadButtonTapped(_ sender: UIButton)
    func wowButtonTapped(_ sender: UIButton)
}

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
        label.textColor = .white
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
        stackView.distribution = .fillProportionally
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
        label.textColor = .white
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
        stackView.distribution = .fillProportionally
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
        label.textColor = .white
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
        stackView.distribution = .fillProportionally
        return stackView
    }()
    let sadButton : UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.translatesAutoresizingMaskIntoConstraints = false
        let buttonImage = UIImage(named: "sad")
        button.setImage(buttonImage, for: UIControl.State.normal)
        button.tintColor = UIColor.white
        button.addTarget(self, action: #selector(sadButtonTapped(_:)), for: UIControl.Event.touchUpInside)
        button.isHidden = false
        return button
    }()
    let sadLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sad"
        label.textColor = .white
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
        stackView.distribution = .fillProportionally
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
        label.textColor = .white
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
        stackView.distribution = .fillEqually
        return stackView
    }()

    weak var delegate: ReactionViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addUIToView()
        self.configUI()
        
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configUI(){
        let sizeOfButton: CGFloat = 50
        let views = ["reactionStackView"    : reactionStackView]
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|[reactionStackView]|", options: [], metrics: nil, views: views))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|[reactionStackView]|", options: [], metrics: nil, views: views))
        
        
        happyButton.widthAnchor.constraint(equalToConstant: sizeOfButton).isActive = true
        happyButton.heightAnchor.constraint(equalToConstant: sizeOfButton).isActive = true
        
        angryButton.widthAnchor.constraint(equalToConstant: sizeOfButton).isActive = true
        angryButton.heightAnchor.constraint(equalToConstant: sizeOfButton).isActive = true
        
        loveButton.widthAnchor.constraint(equalToConstant: sizeOfButton).isActive = true
        loveButton.heightAnchor.constraint(equalToConstant: sizeOfButton).isActive = true
        
        sadButton.widthAnchor.constraint(equalToConstant: sizeOfButton).isActive = true
        sadButton.heightAnchor.constraint(equalToConstant: sizeOfButton).isActive = true
        
        wowButton.widthAnchor.constraint(equalToConstant: sizeOfButton).isActive = true
        wowButton.heightAnchor.constraint(equalToConstant: sizeOfButton).isActive = true
        
        
        happyButton.backgroundColor = .red
        angryButton.backgroundColor = .red
        loveButton.backgroundColor = .red
        sadButton.backgroundColor = .red
        wowButton.backgroundColor = .red
        
    }
    
    func addUIToView(){
        addSubview(reactionStackView)
        
        happyStackView.addArrangedSubview(happyButton)
        happyStackView.addArrangedSubview(happyLabel)
        
        angryStackView.addArrangedSubview(angryButton)
        angryStackView.addArrangedSubview(angryLabel)
        
        loveStackView.addArrangedSubview(loveButton)
        loveStackView.addArrangedSubview(loveLabel)
        
        sadStackView.addArrangedSubview(sadButton)
        sadStackView.addArrangedSubview(sadLabel)
        
        wowStackView.addArrangedSubview(wowButton)
        wowStackView.addArrangedSubview(wowLabel)
        
        reactionStackView.addArrangedSubview(happyStackView)
        reactionStackView.addArrangedSubview(angryStackView)
        reactionStackView.addArrangedSubview(loveStackView)
        reactionStackView.addArrangedSubview(sadStackView)
        reactionStackView.addArrangedSubview(wowStackView)
    }
}

// MARK: - Add Target
extension ReactionView {
    @objc func happyButtonTapped(_ sender: UIButton) {
        delegate?.happyButtonTapped(sender)
    }
    
    @objc func angryButtonTapped(_ sender: UIButton) {
        delegate?.angryButtonTapped(sender)
    }
    
    @objc func loveButtonTapped(_ sender: UIButton) {
        delegate?.loveButtonTapped(sender)
    }
    
    @objc func sadButtonTapped(_ sender: UIButton) {
        delegate?.sadButtonTapped(sender)
    }
    
    @objc func wowButtonTapped(_ sender: UIButton) {
        delegate?.wowButtonTapped(sender)
    }
    
}

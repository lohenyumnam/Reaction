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
        stackView.distribution = .fill
        return stackView
    }()
    let happyImage: UIImageView = {
        let image = UIImage(named: "happy")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    let happyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Happy"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.textAlignment = .center
        return label
    }()
    
    let angryStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 5
        stackView.distribution = .fill
        return stackView
    }()
    let angryImage: UIImageView = {
        let image = UIImage(named: "angry")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    let angryLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Angry"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.textAlignment = .center
        return label
    }()
    
    let loveStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 5
        stackView.distribution = .fill
        return stackView
    }()
    let loveImage: UIImageView = {
        let image = UIImage(named: "love")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    let loveLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Love"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.textAlignment = .center
        return label
    }()
    
    let sadStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 5
        stackView.distribution = .fill
        return stackView
    }()
    let sadImage: UIImageView = {
        let image = UIImage(named: "sad")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    let sadLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sad"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.textAlignment = .center
        return label
    }()
    
    let wowStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 5
        stackView.distribution = .fill
        return stackView
    }()
    let wowImage: UIImageView = {
        let image = UIImage(named: "wow")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    let wowLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Wow"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.textAlignment = .center
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
        addGestureRecognizerToImageView()
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // This allow Image to tap
    func addGestureRecognizerToImageView() {
        self.happyImage.addGestureRecognizer( UITapGestureRecognizer(target: self, action: #selector(self.happyButtonTapped(_:))))
        self.angryImage.addGestureRecognizer( UITapGestureRecognizer(target: self, action: #selector(self.angryButtonTapped(_:))))
        self.loveImage.addGestureRecognizer( UITapGestureRecognizer(target: self, action: #selector(self.loveButtonTapped(_:))))
        self.sadImage.addGestureRecognizer( UITapGestureRecognizer(target: self, action: #selector(self.sadButtonTapped(_:))))
        self.wowImage.addGestureRecognizer( UITapGestureRecognizer(target: self, action: #selector(self.wowButtonTapped(_:))))
    }
    
    func configUI(){
        let sizeOfImage: CGFloat    = 50
        let views = ["reactionStackView"    : reactionStackView]
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|[reactionStackView]|", options: [], metrics: nil, views: views))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|[reactionStackView]|", options: [], metrics: nil, views: views))
        
        
        happyImage.widthAnchor.constraint(equalToConstant: sizeOfImage).isActive = true
        happyImage.heightAnchor.constraint(equalToConstant: sizeOfImage).isActive = true
        
        angryImage.widthAnchor.constraint(equalToConstant: sizeOfImage).isActive = true
        angryImage.heightAnchor.constraint(equalToConstant: sizeOfImage).isActive = true
        
        loveImage.widthAnchor.constraint(equalToConstant: sizeOfImage).isActive = true
        loveImage.heightAnchor.constraint(equalToConstant: sizeOfImage).isActive = true
        
        sadImage.widthAnchor.constraint(equalToConstant: sizeOfImage).isActive = true
        sadImage.heightAnchor.constraint(equalToConstant: sizeOfImage).isActive = true
        
        wowImage.widthAnchor.constraint(equalToConstant: sizeOfImage).isActive = true
        wowImage.heightAnchor.constraint(equalToConstant: sizeOfImage).isActive = true
        
        
        happyImage.backgroundColor = .red
        angryImage.backgroundColor = .red
        loveImage.backgroundColor = .red
        sadImage.backgroundColor = .red
        wowImage.backgroundColor = .red
        
    }
    
    func addUIToView(){
        addSubview(reactionStackView)
        
        happyStackView.addArrangedSubview(happyImage)
        happyStackView.addArrangedSubview(happyLabel)
        
        angryStackView.addArrangedSubview(angryImage)
        angryStackView.addArrangedSubview(angryLabel)
        
        loveStackView.addArrangedSubview(loveImage)
        loveStackView.addArrangedSubview(loveLabel)
        
        sadStackView.addArrangedSubview(sadImage)
        sadStackView.addArrangedSubview(sadLabel)
        
        wowStackView.addArrangedSubview(wowImage)
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



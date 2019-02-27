//
//  Reaction.swift
//  Reaction
//
//  Created by Lohen Yumnam on 27/02/19.
//  Copyright © 2019 Lohen Yumnam. All rights reserved.
//

import UIKit


protocol ReactionControllerDelegate: AnyObject {
    func happyButtonTapped(_ sender: UIButton)
    func angryButtonTapped(_ sender: UIButton)
    func loveButtonTapped(_ sender: UIButton)
    func sadButtonTapped(_ sender: UIButton)
    func wowButtonTapped(_ sender: UIButton)
}

class ReactionController: NSObject {
    lazy var reactionView: ReactionView = {
        let view = ReactionView(frame: .zero)
        view.delegate = self
        return view
    }()
    
    override init() {
        super.init()
        
    }
    
    weak var delegate: ReactionControllerDelegate?
    weak var viewController: UIViewController?
    
    convenience init(withTargat vc: UIViewController) {
        self.init()
        self.viewController = vc
        self.addTarget()
    }
    
    
    func showPickerController() {
        let alertController = UIAlertController(title: "Tap to select a reaction", message: nil, preferredStyle: .actionSheet)
        
        

        
//        let reactionView = ReactionView(frame: .zero)
        alertController.view.addSubview(reactionView)
        
        
        reactionView.topAnchor.constraint(equalTo: alertController.view.topAnchor, constant: 45).isActive = true
        reactionView.rightAnchor.constraint(equalTo: alertController.view.rightAnchor, constant: -10).isActive = true
        reactionView.leftAnchor.constraint(equalTo: alertController.view.leftAnchor, constant: 10).isActive = true
        reactionView.bottomAnchor.constraint(equalTo: alertController.view.bottomAnchor, constant: -15).isActive = true
        //        reactionView.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
        alertController.view.translatesAutoresizingMaskIntoConstraints = false
        alertController.view.heightAnchor.constraint(equalToConstant: 135).isActive = true
        
        //        if let visualEffectView = alertController.view.searchVisualEffectsSubview() {
        //            visualEffectView.effect = UIBlurEffect(style: .dark)
        //        }
        
        if let visualEffectView = self.searchVisualEffectsSubview(atView: alertController.view){
            visualEffectView.effect = UIBlurEffect(style: .dark)
        }
        
        viewController?.present(alertController, animated: true) {
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissAlertController))
            alertController.view.superview?.subviews[0].addGestureRecognizer(tapGesture)
        }
        
        
    }
    
}


// MARK: - Add Target
extension ReactionController: ReactionViewDelegate {
    @objc func dismissAlertController(){
        viewController?.dismiss(animated: true, completion: nil)
    }
    
    
    
    func addTarget() {
//        reactionView.happyButton.addTarget(self, action: #selector(happyButtonTapped(_:)), for: UIControl.Event.touchUpInside)
//        reactionView.angryButton.addTarget(self, action: #selector(angryButtonTapped(_:)), for: UIControl.Event.touchUpInside)
//        reactionView.loveButton.addTarget(self, action: #selector(loveButtonTapped(_:)), for: UIControl.Event.touchUpInside)
//        reactionView.sadButton.addTarget(self, action: #selector(loveButtonTapped(_:)), for: UIControl.Event.touchUpInside)
//        reactionView.wowButton.addTarget(self, action: #selector(wowButtonTapped(_:)), for: UIControl.Event.touchUpInside)
        
    }
    
    @objc func happyButtonTapped(_ sender: UIButton) {
        self.dismissAlertController()
        delegate?.happyButtonTapped(sender)
    }
    
    @objc func angryButtonTapped(_ sender: UIButton) {
        self.dismissAlertController()
        delegate?.angryButtonTapped(sender)
    }
    
    @objc func loveButtonTapped(_ sender: UIButton) {
        self.dismissAlertController()
        delegate?.loveButtonTapped(sender)
    }
    
    @objc func sadButtonTapped(_ sender: UIButton) {
        self.dismissAlertController()
        delegate?.sadButtonTapped(sender)
    }
    
    @objc func wowButtonTapped(_ sender: UIButton) {
        self.dismissAlertController()
        delegate?.wowButtonTapped(sender)
    }
    
}

//extension UIView {
//    func searchVisualEffectsSubview() -> UIVisualEffectView? {
//        if let visualEffectView = self as? UIVisualEffectView {
//            return visualEffectView
//        } else {
//            for subview in subviews {
//                if let found = subview.searchVisualEffectsSubview() {
//                    return found
//                }
//            }
//        }
//
//        return nil
//    }
//}


extension ReactionController {
    func searchVisualEffectsSubview(atView view: UIView) -> UIVisualEffectView? {
        if let visualEffectView = view as? UIVisualEffectView {
            return visualEffectView
        } else {
            for subview in view.subviews {
                if let found = searchVisualEffectsSubview(atView: subview) {
                    return found
                }
            }
        }
        
        return nil
    }
}

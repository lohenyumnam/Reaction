//
//  ViewController.swift
//  Reaction
//
//  Created by Lohen Yumnam on 27/02/19.
//  Copyright © 2019 Lohen Yumnam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var reaction = ReactionController(withTargat: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reaction.delegate = self
    }
    
    @IBAction func open(_ sender: UIButton) {
        reaction.showPickerController()
    }
    
}


extension ViewController: ReactionControllerDelegate {
    func happyButtonTapped(_ sender: UIButton) {
        print("happyButtonTapped")
//        reaction.dismissAlertController()
        let view = UIViewController()
        view.view.backgroundColor = .red
        present(view, animated: true, completion: nil)
    }
    
    func angryButtonTapped(_ sender: UIButton) {
         print("angryButtonTapped")
    }
    
    func loveButtonTapped(_ sender: UIButton) {
         print("loveButtonTapped")
    }
    
    func sadButtonTapped(_ sender: UIButton) {
         print("sadButtonTapped")
    }
    
    func wowButtonTapped(_ sender: UIButton) {
         print("wowButtonTapped")
    }
    
    
}






//
//  SignUpViewController.swift
//  Candy-Commerce
//
//  Created by Christian Elijah on 2020-08-31.
//  Copyright © 2020 Christian Elijah. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet var topView: UIView!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var signSection: UIView!
    @IBOutlet var SignUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        stylingSignUp()
    }
    
    // Styling
    func stylingSignUp() {
        // Top View
        topView.layer.shadowColor = UIColor.black.cgColor
        topView.layer.shadowOffset = .zero
        topView.layer.shadowRadius = 10
        topView.layer.shadowOpacity = 0.8
        topView.layer.cornerRadius = 2

        // Sign Up Section
        signSection.layer.shadowColor = UIColor.black.cgColor
        signSection.layer.shadowOffset = .zero
        signSection.layer.shadowRadius = 10
        signSection.layer.shadowOpacity = 0.8
        signSection.layer.cornerRadius = 8
        
        // Button
        SignUpButton.layer.shadowColor = UIColor.black.cgColor
        SignUpButton.layer.shadowOffset = .zero
        SignUpButton.layer.shadowRadius = 10
        SignUpButton.layer.shadowOpacity = 0.8
        SignUpButton.layer.cornerRadius = 8
    }
    @IBAction func SignUpPrompt(_ sender: Any) {
        let ac = UIAlertController(title: "Joined", message: "Thank you for joining", preferredStyle: .alert)
        
        let signAction = UIAlertAction(title: "Accept", style: .default, handler: nil)
        
        let cancelAction = UIAlertAction(title: "Close", style: .cancel, handler: nil)
        
        ac.addAction(signAction)
        ac.addAction(cancelAction)
        self.present(ac, animated: true)
    }
}

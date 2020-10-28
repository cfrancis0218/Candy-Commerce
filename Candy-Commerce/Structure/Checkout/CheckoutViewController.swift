//
//  CheckoutViewController.swift
//  Candy-Commerce
//
//  Created by Christian Elijah on 2020-08-31.
//  Copyright © 2020 Christian Elijah. All rights reserved.
//

import UIKit

class CheckoutViewController: UIViewController {
    
    // Outlets
    @IBOutlet var checkoutView: UIView!
    @IBOutlet var cartFillView: UIImageView!
    @IBOutlet var checkoutLabel: UILabel!
    @IBOutlet var checkoutList: UITableView!
    @IBOutlet var buyButton: UIButton!
    @IBOutlet var cancelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonStyling()
    }
    func buttonStyling() {
        buyButton.layer.cornerRadius = 12
        buyButton.layer.shadowColor = UIColor.black.cgColor
        buyButton.layer.shadowOffset = .zero
        buyButton.layer.shadowRadius = 8
        buyButton.layer.shadowOpacity = 0.8
        
        cancelButton.layer.cornerRadius = 12
        cancelButton.layer.shadowColor = UIColor.black.cgColor
        cancelButton.layer.shadowOffset = .zero
        cancelButton.layer.shadowRadius = 8
        cancelButton.layer.shadowOpacity = 0.8
    }
    @IBAction func buyAction(_ sender: Any) {
        let alertController = UIAlertController(title: "Item Purchased", message: "Although Item Has Been Purchased, Functionality has not been implemented", preferredStyle: .actionSheet)
        let buyAlert = UIAlertAction(title: "Confirm", style: .default, handler: nil)
        alertController.addAction(buyAlert)
        self.present(alertController, animated: true)
    }
    @IBAction func cancelAction(_ sender: Any) {
        let alertController = UIAlertController(title: "Item Purchased Canceled", message: "Item as been removed", preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true)
    }
}

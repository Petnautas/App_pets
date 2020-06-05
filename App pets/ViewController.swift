//
//  ViewController.swift
//  App pets
//
//  Created by Vinícius de Oliveira on 04/06/20.
//  Copyright © 2020 Vinícius de Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var cardImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cardView.layer.cornerRadius = 30
        cardImage.layer.cornerRadius = 30
    }

}


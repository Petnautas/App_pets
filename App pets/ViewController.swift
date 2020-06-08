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
    @IBOutlet weak var buttonInfo: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cardView.layer.cornerRadius = 30
        cardImage.layer.cornerRadius = 30
        
        buttonInfo.layer.cornerRadius = 0.5*buttonInfo.bounds.size.width
        buttonInfo.layer.borderWidth = 1
        buttonInfo.layer.borderColor = UIColor.white.cgColor
       
    }

}


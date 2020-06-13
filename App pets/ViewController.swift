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
    @IBOutlet weak var buttonRefresh: UIButton!
    @IBOutlet weak var buttonSave: UIButton!
    @IBOutlet weak var buttonApadrinhar: UIButton!
    var a: Bool!
    override func viewDidLoad() {
        super.viewDidLoad()
        a = true

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor(red: 96/255, green: 64/255, blue: 125/255, alpha: 1)
        cardView.layer.cornerRadius = 30
        cardImage.layer.cornerRadius = 30
        
        buttonInfo.layer.cornerRadius = 0.5*buttonInfo.bounds.size.width
        buttonInfo.layer.borderWidth = 1
        buttonInfo.layer.borderColor = UIColor.white.cgColor
       
        buttonRefresh.layer.cornerRadius = 0.8*buttonInfo.bounds.size.width
        buttonRefresh.backgroundColor = UIColor(red: 196/255, green: 177/255, blue: 214/255, alpha: 1)
        buttonRefresh.tintColor = UIColor(red: 96/255, green: 64/255, blue: 125/255, alpha: 1)
        
        
        
        buttonSave.layer.cornerRadius = 0.8*buttonInfo.bounds.size.width
        buttonSave.backgroundColor = UIColor(red: 196/255, green: 177/255, blue: 214/255, alpha: 1)
        buttonSave.tintColor = UIColor(red: 96/255, green: 64/255, blue: 125/255, alpha: 1)
        
       
        
    }
    @IBAction func apadrinharFill(_ sender: Any) {
        buttonApadrinhar.setImage(#imageLiteral(resourceName: "ApadrinharFill"), for:UIControl.State.normal)
    }
    
    @IBAction func saveFill(_ sender: Any) {
        buttonSave.setImage(UIImage(systemName:"bookmark.fill"),for:UIControl.State.normal)
        print("oi")
    }
    


}



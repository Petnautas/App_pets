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
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var mainCardView: UIView!
    @IBOutlet weak var buttonCloseInfo: UIButton!
    var a: Bool!
    override func viewDidLoad() {
        super.viewDidLoad()
        a = true

        // Do any additional setup after loading the view.
        self.backView.layer.cornerRadius = 30
        self.mainCardView.layer.cornerRadius = 30
        
        self.view.backgroundColor = UIColor(red: 96/255, green: 64/255, blue: 125/255, alpha: 1)
        cardView.layer.cornerRadius = 30
        cardImage.layer.cornerRadius = 30
        
        buttonInfo.layer.cornerRadius = 0.5*buttonInfo.bounds.size.width
        buttonInfo.layer.borderWidth = 1
        buttonInfo.layer.borderColor = UIColor.white.cgColor
        
        buttonCloseInfo.layer.cornerRadius = 0.5*buttonInfo.bounds.size.width
        buttonCloseInfo.layer.borderWidth = 1
        buttonCloseInfo.layer.borderColor = UIColor.white.cgColor
       
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

    @IBAction func infoOnTouchUp(_ sender: UIButton) {
        UIView.transition(from: cardView,
                          to: backView,
                          duration: 0.5,
                          options: [
                            .transitionFlipFromLeft,
                            .showHideTransitionViews
                        ],
                          completion: nil)
    }
    @IBAction func closeInfoOnTouchUp(_ sender: UIButton) {
        UIView.transition(from: backView,
                                 to: cardView,
                                 duration: 0.5,
                                 options: [
                                   .transitionFlipFromLeft,
                                   .showHideTransitionViews
                               ],
                                 completion: nil)
    }
}



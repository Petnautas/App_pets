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
    @IBOutlet weak var buttonInfo: UIButton!
    @IBOutlet weak var buttonRefresh: UIButton!
    @IBOutlet weak var buttonSave: UIButton!
    @IBOutlet weak var buttonApadrinhar: UIButton!
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var mainCardView: UIView!
    @IBOutlet weak var buttonCloseInfo: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var descriptionPet: UILabel!
    @IBOutlet weak var descriptionName: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var index = -1
    
    let imageArray = [
        UIImage(named: "british-4912211_1280"),
        UIImage(named: "Image"),
        UIImage(named: "kitten-1031261_1280")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        pageControl.numberOfPages = imageArray.count
        pageControl.hidesForSinglePage = true
        pageControl.tintColor = UIColor(red: 196/255, green: 177/255, blue: 214/255, alpha: 2)
        pageControl.currentPageIndicatorTintColor = .purple
        let closeInfoAction = UITapGestureRecognizer(target: self, action: #selector(self.closeInfo))
        self.buttonCloseInfo.isUserInteractionEnabled = true
        self.buttonCloseInfo.addGestureRecognizer(closeInfoAction)
        
        self.backView.layer.cornerRadius = 30
        self.mainCardView.layer.cornerRadius = 30
        
        self.view.backgroundColor = UIColor(red: 96/255, green: 64/255, blue: 125/255, alpha: 1)
        cardView.layer.cornerRadius = 30
        
        self.collectionView.layer.cornerRadius = 30
        
        buttonInfo.layer.cornerRadius = 0.5*buttonInfo.bounds.size.width
        buttonInfo.layer.borderWidth = 1
        buttonInfo.layer.borderColor = UIColor.white.cgColor
        buttonInfo.layer.zPosition = 1
        
        buttonRefresh.layer.cornerRadius = 0.8*buttonInfo.bounds.size.width
        buttonRefresh.backgroundColor = UIColor(red: 196/255, green: 177/255, blue: 214/255, alpha: 1)
        buttonRefresh.tintColor = UIColor(red: 96/255, green: 64/255, blue: 125/255, alpha: 1)
        
        
        
        buttonSave.layer.cornerRadius = 0.8*buttonInfo.bounds.size.width
        buttonSave.backgroundColor = UIColor(red: 196/255, green: 177/255, blue: 214/255, alpha: 1)
        buttonSave.tintColor = UIColor(red: 96/255, green: 64/255, blue: 125/255, alpha: 1)
        
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageSide = self.collectionView.frame.width
        let offset = scrollView.contentOffset.x
        pageControl.currentPage = Int(floor((offset - pageSide/2) / pageSide) + 1)
    }
    
    @objc func closeInfo(_ sender: UITapGestureRecognizer){
        UIView.transition(from: backView,
          to: cardView,
          duration: 0.5,
          options: [
            .transitionFlipFromLeft,
            .showHideTransitionViews
        ],
          completion: nil)
    }
    
    @IBAction func apadrinharFill(_ sender: Any) {
        let image = UIImage(named: "Apadrinhar")
        
        if buttonApadrinhar.image(for: UIControl.State.normal) == image {
            buttonApadrinhar.setImage(#imageLiteral(resourceName: "ApadrinharFill"), for:UIControl.State.normal)
        }else{
            buttonApadrinhar.setImage(#imageLiteral(resourceName: "Apadrinhar"), for:UIControl.State.normal)
        }
    }
    
    @IBAction func saveFill(_ sender: Any) {
        let image = UIImage(systemName: "bookmark")
              
              if buttonSave.image(for: UIControl.State.normal) == image {
                      buttonSave.setImage(UIImage(systemName:"bookmark.fill"),for:UIControl.State.normal)
              }else{
                      buttonSave.setImage(UIImage(systemName:"bookmark"),for:UIControl.State.normal)
              }
    
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
    
    @IBAction func refreshContents(_ sender: Any) {
//
//              let array = [#imageLiteral(resourceName: "unnamed"), #imageLiteral(resourceName: "kitten-3669244_1280"), #imageLiteral(resourceName: "kitten-1031261_1280"), #imageLiteral(resourceName: "british-4912211_1280"), #imageLiteral(resourceName: "Image")]
//              let arrayText = ["1","2","3","4","5"]
//
//
//
//              if index+1 > 4{
//                index = 0
//                      cardImage.image = array[index]
//                      labelName.text = arrayText[index]
//                      descriptionName.text = labelName.text
//                      descriptionPet.text = arrayText[index]
//                       print(index)
//              }
//              else{
//                index += 1
//                cardImage.image = array[index]
//                labelName.text = arrayText[index]
//                descriptionName.text = labelName.text
//                descriptionPet.text = arrayText[index]
//                print(index)
//
//              }
//
    }
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as?  DataCollectionViewCell
        cell?.cardImage.image = imageArray[indexPath.row]
        
        cell?.contentView.layer.cornerRadius = 30
        cell?.layer.cornerRadius = 30
        cell?.cardImage.layer.cornerRadius = 30
        
        return cell!
    }

    
}

extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = collectionView.frame.size
        return CGSize(width: size.width, height: size.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}



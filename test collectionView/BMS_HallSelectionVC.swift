//
//  BMS_HallSelectionVC.swift
//  test collectionView
//
//  Created by macbook on 2/28/19.
//  Copyright © 2019 macbook. All rights reserved.
//

import UIKit

class BMS_HallSelectionVC: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource{

    
    let hallName = ["Star Hall","Deluxe Hall","Dream Hall","Divine Hall","Desire Hall"]
    
    let hallimages: [UIImage] = [
        UIImage(named: "star.jpg")!,
        UIImage(named: "deluxe.jpg")!,
        UIImage(named: "dream.jpg")!,
        UIImage(named: "divine.jpg")!,
        UIImage(named: "desire.jpg")!,
        ];
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return hallName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HallCell", for:  indexPath) as! BMS_HallSelectionCellVC
        
        cell.hallimage.image = hallimages[indexPath.item]
        cell.halllabel.text = hallName[indexPath.item]
        
        return cell
    }
    
    
}

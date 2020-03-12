//
//  CollectionviewHomeViewController.swift
//  Ecommerce
//
//  Created by DhakaLive on 3/11/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class CollectionviewHomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    

    @IBOutlet weak var CollecetionView: UICollectionView!
    
    let items = ["Bags & Luggage", "Beaty & BodyCare", "Book & Staionery", "Construction Materailas", "Decoration Materails","Digital Goods", "Electric & parts", "Electronics and Appliance", "Event & Media"]
    
    let itemImage: [UIImage] = [
    UIImage(named: "basket")!,
    UIImage(named: "checklist")!,
    UIImage(named: "dress")!,
    UIImage(named: "giftbox")!,
    UIImage(named: "graph")!,
    UIImage(named: "invoice")!,
    UIImage(named: "megaphone")!,
    UIImage(named: "receipt")!,
    UIImage(named: "shop")!,
    UIImage(named: "wallet")!]
    override func viewDidLoad() {
        super.viewDidLoad()
        CollecetionView.delegate = self
        CollecetionView.dataSource = self
        
//        let lay = self.CollecetionView.collectionViewLayout as! UICollectionViewFlowLayout
//        lay.sectionInset = UIEdgeInsets(top: 0,left: 5,bottom: 0,right: 5)
//        lay.minimumInteritemSpacing = 5
//        lay.itemSize = CGSize(width: self.CollecetionView.frame.size.width - 20/2, height: self.CollecetionView.frame.size.height/3)
//
        
        
        
     let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
         var width = UIScreen.main.bounds.width
         layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 0, right: 5)
     width = width - 20
     layout.itemSize = CGSize(width: width / 2, height: width / 2)
         layout.minimumInteritemSpacing = 0
         layout.minimumLineSpacing = 0
         CollecetionView!.collectionViewLayout = layout
       }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCellHome
        
        cell.label.text = items[indexPath.item]
        cell.Image.image = itemImage[indexPath.item]
        cell.layer.borderColor = UIColor.gray.cgColor
    
        return cell
    }
    


}

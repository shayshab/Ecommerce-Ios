//
//  WishListViewController.swift
//  Ecommerce
//
//  Created by DhakaLive on 3/12/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class WishListViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
   
    let productTitle = ["Bags & Luggage", "Beaty & BodyCare", "Book & Staionery", "Construction Materailas", "Decoration Materails","Digital Goods", "Electric & parts", "Electronics and Appliance", "Event & Media"]
    
    let productImageList: [UIImage] = [
    UIImage(named: "basket")!,
    UIImage(named: "checklist")!,
    UIImage(named: "dress")!,
    UIImage(named: "giftbox")!,
    UIImage(named: "graph")!,
    UIImage(named: "invoice")!,
    UIImage(named: "megaphone")!,
    UIImage(named: "receipt")!,
    UIImage(named: "shop")!,
    UIImage(named: "wallet")!
    ]
    
    let productPrice = ["23", "34", "56", "89", "98","67", "56", "90", "56"]
    
    let productTime = ["2 hour ago", "Beaty & BodyCare", "Book & Staionery", "Construction Materailas", "Decoration Materails","Digital Goods", "Electric & parts", "Electronics and Appliance", "Event & Media"]
    
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        

        // Do any additional setup after loading the view.
    }
    

   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return productTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        
        cell.productImage.image = productImageList[indexPath.item]
        cell.titleLb.text = productTitle[indexPath.item]
        cell.priceLb.text = productPrice[indexPath.item]
        cell.timeLb.text = productTime[indexPath.item]
        
        return cell
        
        
    }
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 200
//    }
}

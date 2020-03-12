//
//  signup.swift
//  Ecommerce
//
//  Created by DhakaLive on 3/10/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class signup: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SignupButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        if let signup = storyboard.instantiateViewController(identifier: "HomeVC") as?
            Home {
            self.navigationController?.pushViewController(signup, animated: true)
        }
    }
    
}

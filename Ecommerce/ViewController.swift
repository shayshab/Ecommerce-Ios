//
//  ViewController.swift
//  Ecommerce
//
//  Created by DhakaLive on 3/10/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var phoneTx: UITextField!
    @IBOutlet weak var PassTx: UITextField!
    @IBOutlet weak var forgotBt: UILabel!
    @IBOutlet weak var signinRe: UIButton!
    
    @IBOutlet weak var signuplabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textcolor()
        let buttonRedius = self.signinRe.bounds.width / 50
        self.signinRe.layer.cornerRadius = buttonRedius
        
        
        signuplabel.isUserInteractionEnabled = true
        let tapgesture  = UITapGestureRecognizer.init(target: self, action: #selector(clicklbl))
    }
    
    
    @objc func clicklbl(){
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        if let signUp = storyboard.instantiateViewController(identifier: "signup") as? signup {
            self.navigationController?.pushViewController(signUp, animated: true)
        }
    }
    
    
    @IBAction func signBt(_ sender: Any) {
    
    }
    
    func textcolor(){
        
       let attrs1 = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18), NSAttributedString.Key.foregroundColor : UIColor.black]

        let attrs2 = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18), NSAttributedString.Key.foregroundColor : UIColor.red]

        let attributedString1 = NSMutableAttributedString(string:"Don,t have an account?", attributes:attrs1)

        let attributedString2 = NSMutableAttributedString(string:"Sign up", attributes:attrs2)

        attributedString1.append(attributedString2)
        self.signuplabel.attributedText = attributedString1
        
    }
    

}


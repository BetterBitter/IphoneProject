//
//  ViewController.swift
//  Assignment1
//
//  Created by Riko Pratama Laimena on 8/18/17.
//  Copyright © 2017 Riko Pratama Laimena. All rights reserved.
//

import UIKit


class BankInformationViewController: UIViewController {
    
    @IBOutlet weak var bankNameLabel: UILabel!
    @IBOutlet weak var bankLogoImage: UIImageView!
    @IBOutlet weak var bankPhoneLabel: UILabel!
    @IBOutlet weak var bankWebsiteLabel: UILabel!
    var LOB = Banks()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        bankNameLabel.text = LOB.bankName[myIndex]
        bankPhoneLabel.text = LOB.bankTelephone[myIndex]
        bankWebsiteLabel.text = LOB.bankWebsite[myIndex]
        bankLogoImage.image = UIImage (named: LOB.bankLogo[myIndex])
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}

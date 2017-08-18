//
//  ListOfBankViewController.swift
//  Assignment1
//
//  Created by Riko Pratama Laimena on 8/18/17.
//  Copyright © 2017 Riko Pratama Laimena. All rights reserved.
//

import UIKit

var banks = ["bank1","bank2","bank3"]

class ListOfBankViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return banks.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = banks[indexPath.row]
        
        return cell
    }

}

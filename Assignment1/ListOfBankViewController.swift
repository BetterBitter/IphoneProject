//
//  ListOfBankViewController.swift
//  Assignment1
//
//  Created by Riko Pratama Laimena on 8/18/17.
//  Copyright © 2017 Riko Pratama Laimena. All rights reserved.
//

import UIKit



class ListOfBankViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    var LOB = Banks()
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return LOB.banks.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = LOB.banks[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        LOB.myIndex = indexPath.row
        performSegue(withIdentifier: LOB.segue, sender: self)
    }
}

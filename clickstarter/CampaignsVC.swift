//
//  CampaignsVC.swift
//  clickstarter
//
//  Created by Thomas Gibbons on 5/21/15.
//  Copyright (c) 2015 Thomas Gibbons. All rights reserved.
//

import UIKit

class CampaignsVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var campaignsArray = []

    @IBOutlet weak var campaignsTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cellID") as! CampaignCell
        let campaign: AnyObject = campaignsArray[indexPath.row]
        let title = campaign.valueForKey("title") as! String
        cell.campaignTitle.text = title
        println(title)
        return cell
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return campaignsArray.count
    }


}

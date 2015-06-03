//
//  CampaignCell.swift
//  clickstarter
//
//  Created by Thomas Gibbons on 5/21/15.
//  Copyright (c) 2015 Thomas Gibbons. All rights reserved.
//

import UIKit

class CampaignCell: UITableViewCell {

    @IBOutlet weak var supporters: UIView!
    @IBOutlet weak var campaignImage: UIImageView!
    @IBOutlet weak var campaignTitle: UILabel!
    
    override func awakeFromNib()
    
    {
        super.awakeFromNib()
        self.autoresizingMask = UIViewAutoresizing.None
        self.clipsToBounds = true
        self.imageView?.contentMode = UIViewContentMode.ScaleAspectFit
        self.imageView?.image = UIImage(named: "marathon")
        // Initialization code
    }
    

    @IBAction func supportersButtonTap(sender: AnyObject)
    {
        
    }


}

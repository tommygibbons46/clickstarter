//
//  Campaign.swift
//  
//
//  Created by Thomas Gibbons on 5/21/15.
//
//

import UIKit

class Campaign: NSObject
{
    var campaignTitle : String?
    var campaignSubtitle : String?
    var campaignBody : String?
    
    
    func callCampaigns()
    {
        let url = NSURL(string: "http://www.clickstarter.io/api/campaigns")
        let request = NSURLRequest(URL: url!)
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()) { (response, data, error) -> Void in
            
            var error: NSError?
            let newData: NSData = data
            let decodedArray = NSJSONSerialization.JSONObjectWithData(newData, options: NSJSONReadingOptions.AllowFragments, error: nil) as! NSArray
            println(decodedArray.objectAtIndex(0).valueForKey("title"))
            self.campaignsArray = decodedArray
            self.campaignsTable.reloadData()
        }
        
    }
    
    
}

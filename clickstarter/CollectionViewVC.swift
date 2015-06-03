//
//  CollectionViewVC.swift
//  clickstarter
//
//  Created by Thomas Gibbons on 6/1/15.
//  Copyright (c) 2015 Thomas Gibbons. All rights reserved.
//

import UIKit

class CollectionViewVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.callCampaigns()
        
        

        // Do any additional setup after loading the view.
    }
    func callCampaigns()
    {
        let url = NSURL(string: "http://www.clickstarter.io/api/campaigns")
        let request = NSURLRequest(URL: url!)
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()) { (response, data, error) -> Void in
            
            var error: NSError?
            let newData: NSData = data
            let decodedArray = NSJSONSerialization.JSONObjectWithData(newData, options: NSJSONReadingOptions.AllowFragments, error: nil) as! NSArray
            println(decodedArray.objectAtIndex(0).valueForKey("title"))
        }
        
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cellID", forIndexPath: indexPath) as! CollectionViewCell
        
        return cell
    }
    

}

//
//  settingsViewController.swift
//  VeenaCarousel
//
//  Created by Veena on 10/25/15.
//  Copyright © 2015 Veena. All rights reserved.
//

import UIKit

class settingsViewController: UIViewController {
    
    @IBOutlet weak var signOutButton: UIButton!
    
    @IBOutlet weak var settingsScroll: UIScrollView!

    @IBOutlet weak var settingsImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // settingsScroll.contentSize = settingsImageView.image!.size
       
        settingsScroll.contentSize = CGSize(width:320, height:924)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var settingsback: UIButton!
    

    @IBAction func settingsback(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
            }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

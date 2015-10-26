//
//  TutorialViewController.swift
//  VeenaCarousel
//
//  Created by Veena on 10/25/15.
//  Copyright © 2015 Veena. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {
    
   
    @IBOutlet weak var TutorialPageControl: UIPageControl!
    
  
    @IBOutlet weak var TutorialScrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        TutorialScrollView.contentSize = CGSize(width:1280, height: 620)
        
       // TutorialScrollView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(TutorialScrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(TutorialScrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        TutorialPageControl.currentPage = page
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

//
//  SignInViewController.swift
//  VeenaCarousel
//
//  Created by Veena on 10/18/15.
//  Copyright © 2015 Veena. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var Email: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    
    @IBOutlet weak var SignInButton: UIButton!
    
    @IBOutlet weak var LoginForm: UIImageView!
    
//    var alertView = UIAlertController(title: "Title", message: "Message", delegate: self, OKButtonTitle: "OK", cancelButtonTitle: "Cancel")
    var initialY: CGFloat!
    let offset: CGFloat = -50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialY = LoginForm.frame.origin.y
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        
        self.LoginForm.frame.origin = CGPoint(x: self.LoginForm.frame.origin.x, y: self.initialY + self.offset)
        
        //scrollView.contentOffset.y = // max offset
        
        //button.transfrom = CGAffineTransformMakeTranslation( 60, 60)
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
         self.LoginForm.frame.origin = CGPoint(x: self.LoginForm.frame.origin.x, y: self.initialY)
        
    }
    
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    
    @IBAction func EditingChanged(sender: AnyObject) {
        // create a conditional statement: if the Email OR Password fields are empty than...
        if Email.text!.isEmpty || Password.text!.isEmpty {
            // set the button state to disabled
            SignInButton.enabled = false
            // otherwise
        } else {
            // set the button state to enabled
            SignInButton.enabled = true
        }
        }
    
    @IBAction func Tapped (sender: AnyObject) {
        
        // create a conditional statement: if the Email OR password fields are empty than...
        if Email.text!.isEmpty || Password.text!.isEmpty {
            // set alert
            _ = UIAlertController(title: "Email/Password is empty", message: "Please enter Email and Password", preferredStyle: .Alert)
            // otherwise
        } else
        {
            // Check if password is correct
            if Email.text!.isEmpty || Password.text!.isEmpty {
                // set alert
                _ = UIAlertController(title: "Email/Password is empty", message: "Please enter Email and Password", preferredStyle: .Alert)
               
                // create a cancel action
                let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
                    // handle cancel response here. Doing nothing will dismiss the view.
                }
                // add the cancel action to the alertController
                alertController.addAction(cancelAction)
                
                // create an OK action
                let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                    // handle response here.
                }
                // add the OK action to the alert controller
                alertController.addAction(OKAction)

                // otherwise
            } else {
                // Check if password is correct
                if Email.text != "Veena@xyz.com" || Password.text != "Pass" {
                    // set alert
                    _ = UIAlertController(title: "Email/Password is incorrect", message: "Please reenter Email and Password", preferredStyle: .Alert)
                    // otherwise
                } else {
                    if Email.text == "Veena@xyz.com" && Password.text == "Pass" {
                        print("Email and password is valid")
                        
                        // TODO: Perform Segue
                    }
                    
                }
                
            }
            
        }
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
//    class SignInViewController: UIViewController, UIAlertViewDelegate {
//        func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
//            print("Button index $buttonIndex");
//            
//        }
////        var alertView = UIAlertController(title: "Title", message: "Message", delegate: self, OKButtonTitle: "OK", cancelButtonTitle: "Cancel")
////        alertView.show()
////    }
//    
//    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

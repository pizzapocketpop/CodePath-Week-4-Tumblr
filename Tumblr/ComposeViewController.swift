//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Stephanie Parrott on 10/8/15.
//  Copyright © 2015 Stephanie Parrott. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

   
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
 
    override func viewDidAppear(animated: Bool) {

        UIView.animateWithDuration(0.4, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.3 , options: .CurveEaseOut, animations: { () -> Void in
            self.photoButton.frame.origin.y = 160
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(0.4, delay: 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.3 , options: .CurveEaseOut, animations: { () -> Void in
            self.chatButton.frame.origin.y = 280
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(0.4, delay: 0.1, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.3 , options: .CurveEaseOut, animations: { () -> Void in
            self.quoteButton.frame.origin.y = 160
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(0.4, delay: 0.15, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.3 , options: .CurveEaseOut, animations: { () -> Void in
            self.textButton.frame.origin.y = 160
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(0.4, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.3 , options: .CurveEaseOut, animations: { () -> Void in
            self.linkButton.frame.origin.y = 280
            }) { (Bool) -> Void in
        }
        
        UIView.animateWithDuration(0.4, delay: 0.25, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.3 , options: .CurveEaseOut, animations: { () -> Void in
            self.videoButton.frame.origin.y = 280
            }) { (Bool) -> Void in
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nevermindTap(sender: AnyObject) {
       
        
//        UIView.animateWithDuration(0.4, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.11 , options: .CurveEaseOut, animations: { () -> Void in
//            self.photoButton.frame.origin.y = -96
//            }) { (Bool) -> Void in
//        }
//        
//        UIView.animateWithDuration(0.4, delay: 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.1 , options: .CurveEaseOut, animations: { () -> Void in
//            self.chatButton.frame.origin.y = -96
//            }) { (Bool) -> Void in
//        }
//        
//        UIView.animateWithDuration(0.4, delay: 0.1, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.1 , options: .CurveEaseOut, animations: { () -> Void in
//            self.quoteButton.frame.origin.y = -96
//            }) { (Bool) -> Void in
//        }
//        
//        UIView.animateWithDuration(0.4, delay: 0.15, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.1 , options: .CurveEaseOut, animations: { () -> Void in
//            self.textButton.frame.origin.y = -96
//            }) { (Bool) -> Void in
//        }
//        
//        UIView.animateWithDuration(0.4, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.1 , options: .CurveEaseOut, animations: { () -> Void in
//            self.linkButton.frame.origin.y = -96
//            }) { (Bool) -> Void in
//        }
//        
//        UIView.animateWithDuration(0.4, delay: 0.25, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.1 , options: .CurveEaseOut, animations: { () -> Void in
//            self.videoButton.frame.origin.y = -96
//            }) { (Bool) -> Void in
//            
//        }
        
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
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

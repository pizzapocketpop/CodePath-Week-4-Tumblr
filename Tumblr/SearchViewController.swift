//
//  SearchViewController.swift
//  Tumblr
//
//  Created by Stephanie Parrott on 10/8/15.
//  Copyright © 2015 Stephanie Parrott. All rights reserved.
//

import UIKit

var loading_1: UIImage!
var loading_2: UIImage!
var loading_3: UIImage!

var images: [UIImage]!
var animatedImage: UIImage!

class SearchViewController: UIViewController {

    @IBOutlet weak var loadingScreen: UIView!
    @IBOutlet weak var loadingImage: UIImageView!
    
    override func viewWillAppear(animated: Bool) {
        
        loading_1 = UIImage(named: "loading-1")
        loading_2 = UIImage(named: "loading-2")
        loading_3 = UIImage(named: "loading-3")
        
        images = [loading_1, loading_2, loading_3]
        
        animatedImage = UIImage.animatedImageWithImages(images, duration: 0.5)
        
        loadingImage.image = animatedImage
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delay(1) {
            UIView.animateWithDuration(0.2) { () -> Void in
            self.loadingScreen.alpha = 0.0
            }
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
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

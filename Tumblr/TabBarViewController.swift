//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Stephanie Parrott on 10/8/15.
//  Copyright © 2015 Stephanie Parrott. All rights reserved.
//

import UIKit

var homeViewController: UIViewController!
var searchViewController: UIViewController!
var accountViewController: UIViewController!
var trendingViewController: UIViewController!


var viewControllers: [UIViewController]!

var selectedIndex: Int = 0

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet var buttons: [UIButton]!
 
    @IBOutlet weak var composeButton: UIButton!
    @IBOutlet weak var toolTip: UIImageView!
    
    override func viewWillAppear(animated: Bool) {
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        viewControllers = [homeViewController,searchViewController,accountViewController, trendingViewController]

        // Do any additional setup after loading the view.
        
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.7, delay: 0, options: [UIViewAnimationOptions.Autoreverse, UIViewAnimationOptions.Repeat], animations: { () -> Void in
            self.toolTip.transform = CGAffineTransformMakeTranslation(0, -10)
            }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressTab(sender: UIButton) {
        
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        
        buttons[previousIndex].selected = false
        
        let previousVC = viewControllers[previousIndex]
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.selected = true
        
        let vc = viewControllers[selectedIndex]
        
        addChildViewController(vc)
        
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        
        vc.didMoveToParentViewController(self)
        
        print("Tag: \(selectedIndex)")
        
        if selectedIndex == 1 {
            UIView.animateWithDuration(0.2) { () -> Void in
                self.toolTip.alpha = 0.0
            }
        }
            
        if selectedIndex != 1 {
            UIView.animateWithDuration(0.2) { () -> Void in
                self.toolTip.alpha = 1.0
            }
        
        }

    }

    override func viewWillDisappear(animated: Bool) {
    
    }
    
    override func viewDidDisappear(animated: Bool) {
        
        
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

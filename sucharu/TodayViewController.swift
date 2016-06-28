//
//  TodayViewController.swift
//  sucharu
//
//  Created by Sucharu Hasija on 08/06/16.
//  Copyright © 2016 Sucharu Hasija. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    @IBOutlet weak var sideLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
  
        UIView.animateWithDuration(2.0, animations: {
            
            
            self.sideLabel.frame.origin.x -= 30
            self.sideLabel.alpha = 0.0
            }) { (value) in
                
                self.sideLabel.alpha = 1.0
                self.sideLabel.frame.origin.x += 30

                
        }
    
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.

        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData

        completionHandler(NCUpdateResult.NewData)
    }
    
}

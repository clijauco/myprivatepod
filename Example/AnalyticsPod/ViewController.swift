//
//  ViewController.swift
//  AnalyticsPod
//
//  Created by clijauco@deloitte.com on 07/25/2022.
//  Copyright (c) 2022 clijauco@deloitte.com. All rights reserved.
//

import AnalyticsPod
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //AnalyticsManager.shared.logEvent(name: "test_only")
        
        let firebaseService = FirebaseAnalyticsService()
        
        AnalyticsManager.shared.add(services: [firebaseService])
        AnalyticsManager.shared.sendLogs()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


//
//  ViewController.swift
//  RPiLight
//
//  Created by Rishabh Manocha on 11/21/15.
//  Copyright © 2015 Rishabh Manocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let smallLightURL = "http://192.168.1.108:5000/toggle"
    let bigLightURL = "http://192.168.1.108:5000/toggle_big"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func smallLightTapped(sender: UIButton) {
        get(smallLightURL)
    }
    
    func get(url : String) {
        let url = NSURL(string: url)
        let request = NSMutableURLRequest(URL: url!);
        request.HTTPMethod = "GET"
        
        let task = NSURLSession.sharedSession().dataTaskWithRequest(request) {
            data, response, error in
            
            //in case of error
            if error != nil {
                return
            }
        }
        task.resume();
    }
}


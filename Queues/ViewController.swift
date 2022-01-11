//
//  ViewController.swift
//  Queues
//
//  Created by Justin Lowry on 1/3/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func start(_ sender: Any) {
        let queue = DispatchQueue.global()
        queue.async {
            for i in 1...10 {
                DispatchQueue.main.async {
                    self.label.text = "\(i)"
                }
                sleep(1)
            }
            DispatchQueue.main.async {
                self.label.text = "Done"
            }
        }
    }
        
    @IBAction func test(_ sender: Any) {
        print("Test")
    }
    
    @IBOutlet weak var label: UILabel!
}



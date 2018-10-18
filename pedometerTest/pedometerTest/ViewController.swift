//
//  ViewController.swift
//  pedometerTest
//
//  Created by Joel Vangente on 13/10/2018.
//  Copyright © 2018 Joel Vangente. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    @IBOutlet weak var statusTitle: UILabel!
    @IBOutlet weak var stepsLabel: UILabel!
    @IBOutlet weak var paceLabel: UILabel!
    @IBOutlet weak var avgPaceLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBAction func startStopbtn(_ sender: Any) {
    }
    
    
    private let activityManager = CMMotionActivityManager()
    private let pedometer = CMPedometer()
    
    private func startTrackingActivityType() {
        
        activityManager.startActivityUpdates(to: OperationQueue.main) {
            [weak self] (activity: CMMotionActivity?) in
            
            guard let activity = activity else { return }
            DispatchQueue.main.async {
                if activity.walking {
                    self?.statusTitle.text = "Walking"
                } else if activity.stationary {
                    self?.statusTitle.text = "Stationary"
                } else if activity.running {
                    self?.statusTitle.text = "Running"
                } else if activity.automotive {
                    self?.statusTitle.text = "Automotive"
                }
            }
        }
    }
    
    private func startCountingSteps() {
        
        pedometer.startUpdates(from: Date()) {
            [weak self] pedometerData, error in
            guard let pedometerData = pedometerData, error == nil else { return }
            
            DispatchQueue.main.async {
                self?.stepsLabel.text = pedometerData.numberOfSteps.stringValue
            }
        }
    }
    
    private func startUpdating() {
        if CMMotionActivityManager.isActivityAvailable() {
            startTrackingActivityType()
        }
        
        if CMPedometer.isStepCountingAvailable() {
            startCountingSteps()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


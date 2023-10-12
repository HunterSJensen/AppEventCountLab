//
//  ViewController.swift
//  AppEventCount Lab
//
//  Created by Hunter Jensen on 10/12/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var finishLaunchingWithOptions: UILabel!
    
    
    @IBOutlet weak var configurationForConnecting: UILabel!
    var configurationForConnectingCount = 0
    
    @IBOutlet weak var sceneWillConnectTo: UILabel!
    var sceneWillConnectCount = 0
    
    @IBOutlet weak var sceneDidBecomeActive: UILabel!
    var sceneDidBecomeActiveCount = 0
    
    @IBOutlet weak var sceneWillResignActive: UILabel!
    var sceneWillResginActiveCount = 0
    
    @IBOutlet weak var sceneWillEnterForeground: UILabel!
    var sceneWillEnterForegroundCount = 0
    
    @IBOutlet weak var sceneDidEnterBackground: UILabel!
    var sceneDidEnterBackgroundCount = 0
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func updateView() {
        finishLaunchingWithOptions.text = "The App has launched \(appDelegate.launchCount) time(s)"
        sceneDidBecomeActive.text = "The App has been activated \(sceneWillConnectCount) time(s)"
        sceneWillResignActive.text = "The App has resigned active \(sceneWillResginActiveCount) time(s)"
        sceneWillEnterForeground.text = "The App has entered the foreground \(sceneWillEnterForegroundCount) time(s)"
        sceneDidEnterBackground.text = "The App did enter the background \(sceneDidEnterBackgroundCount) time(s)"
        configurationForConnecting.text = "The App config \(configurationForConnectingCount) time(s)"
        sceneWillConnectTo.text = "Will connect \(sceneWillConnectCount) time(s)"
    }

}


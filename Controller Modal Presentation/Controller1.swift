//
//  ViewController.swift
//  Controller Modal Presentation
//
//  Created by Shahar Ben-Dor on 10/26/19.
//  Copyright © 2019 Spectre Software. All rights reserved.
//

import UIKit

class Controller1: UIViewController {
    
    let presentNextControllerBySettingItAsRoot = true
    
    // NOTES
    // When the application starts, this is the initial view controller and
    // is also the window's root view controller. If we were to present controller 2
    // without setting it as the root view controller, we wouldn't get the effect we're
    // going for when presenting controller 3. You can try both ways of presenting controller 2
    // by changing the value of "presentNextControllerBySettingItAsRoot" above this comment
    
    
    // OTHER NOTES
    // Controller2 presents Controller3 through a segue so there's no need to code anything there
    

    // Function for setting the root view controller
    func setControllerAsRoot(viewController: UIViewController) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = viewController
    }
    
    // Function for presenting the next controller normally without setting it as the root controller
    func presentControllerNormally(viewController: UIViewController) {
        viewController.modalPresentationStyle = .fullScreen
        present(viewController, animated: true, completion: nil)
    }
    
    // Called when the button is clicked
    @IBAction func clickedNextBtn(_ sender: UIButton) {
        let nextController = storyboard?.instantiateViewController(withIdentifier: "Controller2")
        
        if presentNextControllerBySettingItAsRoot {
            setControllerAsRoot(viewController: nextController!)
        } else {
            presentControllerNormally(viewController: nextController!)
        }
    }
}

